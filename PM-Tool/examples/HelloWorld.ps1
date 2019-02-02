<#
.SYNOPSIS
Used to Demostrate Creating a GUI for PowerShell

.DESCRIPTION
Be sure to have the three files, your XAML Form, the loadDialog.ps1 helper cmdLet, and this file.  For clean separation
Store your .ps1 files in a Scripts Folder and the XAML forms in a Forms folder
#>
Add-Type -AssemblyName PresentationFramework

# .\loadDialog.ps1 -XamlPath '..\Forms\MyForm.xaml'
[xml]$Form = @"
<Window

xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
Title="MainWindow" Height="350" Width="525">
<Grid>
<Label Name="Label1" Content="Label" HorizontalAlignment="Left" Margin="68,38,0,0" VerticalAlignment="Top" Width="197"/>
<Button Name="Button1" Content="Button" HorizontalAlignment="Left" Margin="307,41,0,0" VerticalAlignment="Top" Width="75"/>

</Grid>
</Window>
"@

$XMLReader = (New-Object System.Xml.XmlNodeReader $Form)
$XMLForm = [Windows.Markup.XamlReader]::Load($XMLReader)
$button1 = $XMLForm.FindName('Button1')
$Label1 = $XMLForm.FindName('Label1')

#EVENT Handler 
$button1.Add_Click( {  
    $Label1.Content = ("Hello World")
  })



#Launch the window
# $xamGUI.ShowDialog() | out-null
$XMLForm.ShowDialog() | out-null