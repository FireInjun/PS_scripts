<#
.SYNOPSIS
Used to Demostrate Creating a GUI for PowerShell

.DESCRIPTION
Be sure to have the three files, your XAML Form, the loadDialog.ps1 helper cmdLet, and this file.  For clean separation
Store your .ps1 files in a Scripts Folder and the XAML forms in a Forms folder
#>
Add-Type -AssemblyName PresentationFramework

# [xml]$content = 
# [xml]$Types = Get-Content $Pshome\Types.ps1xml
# .\loadDialog.ps1 -XamlPath '..\Forms\MyForm.xaml'
$Form = [xml](Get-Content ".\Hello2.xml")
$Form2 = [xml](Get-Content ".\Hello3.xml")
# $hello1 = Start-Process PowerShell ".\HelloWorld.ps1"

$XMLReader = (New-Object System.Xml.XmlNodeReader $Form)
$XMLForm = [Windows.Markup.XamlReader]::Load($XMLReader)
$XMLReader1 = (New-Object System.Xml.XmlNodeReader $Form2)
$XMLForm1 = [Windows.Markup.XamlReader]::Load($XMLReader1)

# $time = [datetime]::Now.ToString("ddd MM/dd/yyyy HH:mm:ss")
# function refresh(){ 
#   while($true)
# {
#   $Label1.Content= [datetime]::Now.ToString("HH:mm:ss");
#   Start-Sleep -Milliseconds 500 
# }
# }
$Time= (get-date).Addhours(-3)

$button1 = $XMLForm.FindName('Button1')
$Label1 = $XMLForm.FindName('Label1')
$Label1.Content= get-date $Time -f 'hh:mm:ss'


$button2 = $XMLForm1.FindName('Button2')
$Label2 = $XMLForm1.FindName('Label2')

#EVENT Handler 
$button1.Add_Click( {  
    .\HelloWorld.ps1
    # $XMLForm1.ShowDialog()
    # $Label1.Content = ("Hello World")
  })

$button2.Add_Click( {  
    # $XMLForm1.ShowDialog()
    ..\clock\clock.ps1
  })

#Launch the window
# $xamGUI.ShowDialog() | out-null
$XMLForm.ShowDialog() | out-null

