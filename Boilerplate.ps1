# Hide yo console
$SW_HIDE, $SW_SHOW = 0, 5
$TypeDef = '[DllImport("User32.dll")]public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);'
Add-Type -MemberDefinition $TypeDef -Namespace Win32 -Name Functions
$hWnd = (Get-Process -Id $PID).MainWindowHandle
$Null = [Win32.Functions]::ShowWindow($hWnd,$SW_HIDE)

# Define your app + form
Add-Type -AssemblyName PresentationFramework
$App = [Windows.Application]::new() # or New-Object -TypeName Windows.Application
$Form = [Windows.Markup.XamlReader]::Load(
    [Xml.XmlNodeReader]::new([xml]@'
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" 
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" Title="MainWindow" Height="350" Width="525">
  <Grid>
    <Label Name="Label1" Content="Label" HorizontalAlignment="Left" Margin="68,38,0,0" VerticalAlignment="Top" Width="197"/>
    <Button Name="Button1" Content="Button" HorizontalAlignment="Left" Margin="307,41,0,0" VerticalAlignment="Top" Width="75"/>

  </Grid>
</Window>
'@)
)
# or ::Load((New-Object -TypeName Xml.XmlNodeReader -ArgumentList ([xml]@'
#wpfdef
#'@))
#)

# $button1 = $Form.FindName('Button1')
$Label1 = $Form.FindName('Label1')

$Label1.Content = [datetime]::Now.ToString("HH:mm:ss");




# Fixes the "freeze" problem
function Update-Gui() {
    # Basically WinForms Application.DoEvents()
    $App.Dispatcher.Invoke([Windows.Threading.DispatcherPriority]::Background, [action]{})
}






#to stop run 
# $timer.stop() 
#cleanup 
# Unregister-Event thetimer

# Event handlers go here
$Form.add_Closing({
    $Form.Close()
    $App.Shutdown()
    Stop-Process -Id $PID # or return your console: [Win32.Functions]::ShowWindow($hWnd,$SW_SHOW)
})


# Finally
$App.Run($Form)
add-type -AssemblyName system.windows.forms
$form=New-Object System.Windows.Forms.Form
$btn=New-Object System.Windows.Forms.Button
$form.Controls.Add($btn)
$btn.add_Click({$form.Close()})
$form.ShowDialog()