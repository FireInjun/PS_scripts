# Hide yo console
$SW_HIDE, $SW_SHOW = 0, 5
$TypeDef = '[DllImport("User32.dll")]public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);'
Add-Type -MemberDefinition $TypeDef -Namespace Win32 -Name Functions
$hWnd = (Get-Process -Id $PID).MainWindowHandle
$Null = [Win32.Functions]::ShowWindow($hWnd, $SW_HIDE)

# Define your app + form
Add-Type -AssemblyName PresentationFramework
$App = [Windows.Application]::new() # or New-Object -TypeName Windows.Application
$Form = [Windows.Markup.XamlReader]::Load(
  [Xml.XmlNodeReader]::new([xml]@'
<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Lambda-PM-Windows" Height="800" Width="600"
        WindowStartupLocation="CenterOwner">
        
    <Grid>
		<Grid.ColumnDefinitions>
			<ColumnDefinition Width="1*" />
			<ColumnDefinition Width="1*" />
      <ColumnDefinition Width="1*" />
 			<ColumnDefinition Width="1*" />
			<ColumnDefinition Width="1*" />
		</Grid.ColumnDefinitions>
		<Grid.RowDefinitions>
			<RowDefinition Height="1*" />
			<RowDefinition Height="1*" />
			<RowDefinition Height="1*" />
			<RowDefinition Height="1*" />
      <RowDefinition Height="1*" />
		</Grid.RowDefinitions>
		<Button>Button 1</Button>
		<Button Grid.Column="1">Button 2</Button>
    <Button Grid.Column="2">Button 3</Button>
    <Button Grid.Column="3">Button 4</Button>
    <Button Grid.Column="4">Button 5</Button>
      <!-- Second row of buttons --> 
    <Button Grid.Row="1">Button 6</Button>
		<Button Grid.Column="1" Grid.Row="1">Button 7</Button>
		<Button Grid.Column="2" Grid.Row="1">Button 8</Button>
		<Button Grid.Column="3" Grid.Row="1">Button 9</Button>
    <Button Grid.Column="4" Grid.Row="1">Button 10</Button>
          <!-- Third row of buttons --> 
    <Button Grid.Row="2">Button 11</Button>
		<Button Grid.Column="1" Grid.Row="2">Button 12</Button>
		<Button Grid.Column="2" Grid.Row="2">Button 13</Button>
		<Button Grid.Column="3" Grid.Row="2">Button 14</Button>
    <Button Grid.Column="4" Grid.Row="2">Button 15</Button>
          <!-- Fourth row of buttons --> 
    <Button Grid.Row="3">Button 16</Button>
		<Button Grid.Column="1" Grid.Row="3">Button 17</Button>
		<Button Grid.Column="2" Grid.Row="3">Button 18</Button>
		<Button Grid.Column="3" Grid.Row="3">Button 19</Button>
    <Button Grid.Column="4" Grid.Row="3">Button 20</Button>
          <!-- Fifth row of buttons --> 
    <Button Grid.Row="4">Button 21</Button>
		<Button Grid.Column="1" Grid.Row="4">Button 22</Button>
		<Button Grid.Column="2" Grid.Row="4">Button 23</Button>
		<Button Grid.Column="3" Grid.Row="4">Button 24</Button>
    <Button Grid.Column="4" Grid.Row="4">Button 25</Button>
	</Grid>
</Window>
'@)
)
# or ::Load((New-Object -TypeName Xml.XmlNodeReader -ArgumentList ([xml]@'
#wpfdef
#'@))
#)
# $Repo = $Textbox.Replace('https://github.com/LambdaSchool/','')

$chromevar = @{
  zoom         = 'https://zoom.us/start/videomeeting/'
  jibble       = 'https://app.jibble.io/'
  tk           = 'https://learn.lambdaschool.com/'
  handbook     = 'https://docs.google.com/document/d/1AvMzCwbZfnPjCX1WEfJb8Y6PAgPW0UnjhnUdhjEc2WQ/edit?usp=sharing'
  replit       = 'https://repl.it/'
  dashboard    = "http://ls-instruction-dashboards.netlify.com/pms/$($PM.First)-$($PM.Last)"
  attendance   = 'https://airtable.com/shrEawWXvMldYbm5Q'
  ahattendance = 'https://airtable.com/shr9BOcaNnnCSXK9f'
  pmday        = 'https://airtable.com/shripCmauVlvxNrAT'
  dayview      = 'https://airtable.com/shrOM8tcnR4aqtyGF'
  pmweek       = 'https://airtable.com/shripCmauVlvxNrAT'
  weekview     = 'https://airtable.com/shrEnghwzzhacLtaL'
  oneonone     = 'https://airtable.com/shr6wexWV3RM4ITJP'
  prcheck      = "https://github.com/LambdaSchool/$Repo/pulls?utf8=%E2%9C%93&q=is%3Apr+is%3Aopen+$arg"
  
  sandbox      = "https://codesandbox.io/s/github/$_/$Repo"
  batchgh      = "https://github.com/$_"
}

$Batch = [ordered]@{
  gh   = foreach ( $_ in $Students.values.gh) { start-process "chrome.exe" "https://github.com/$_", '--profile-directory="Default' }
  ghpr = foreach ( $_ in $Students.values.gh) { start-process "chrome.exe" "https://github.com/LambdaSchool/$Repo/pulls?utf8=%E2%9C%93&q=is%3Apr+is%3Aopen+$_", '--profile-directory="Default' }
}

$apps = [ordered]@{
  web      = function web() {start-process "chrome.exe" "https://github.com/$url", '--profile-directory="Default'}
  batchweb = start-process "chrome.exe" , $url'--profile-directory="Default'
}

$Students = [ordered]@{
  st0 = [ordered]@{Name = 'Arthur Bates Jr.'; GH = 'AliasAJ'; OS = 'Win'; TZ = 'EST'}
  st1 = [ordered]@{Name = 'Erica Thompson' ; GH = 'ericathompson'; OS = 'Mac'; TZ = 'PST'}
  st2 = [ordered]@{Name = 'James Phillips'; GH = 'CASDFJ'; OS = 'Win'; TZ = 'EST'}
  st3 = [ordered]@{Name = 'Jurgen Kela' ; GH = 'kelajatu'; OS = 'Mac'; TZ = 'EST'}
  st4 = [ordered]@{Name = 'Kyle Meltzer'; GH = 'meltzerkyle'; OS = 'Mac'; TZ = 'CST'}
  st5 = [ordered]@{Name = 'Sam Khaled'; GH = 'AppMkrATL'; OS = 'Win'; TZ = 'EST'}
  st6 = [ordered]@{Name = 'Tim Zulf'; GH = 'Tulf'; OS = 'Linux-Ubuntu'; TZ = 'EST'}
}

$PM = @{
  GitHub = "FireInjun"
  Name   = [ordered]@{First = 'Mykeal'; Last = 'Kenny'}
}

# Character array for our arguments
# Pre filled in with '+' to avoid parsing and adding it
# $chars = @("Luke Skywalker", "C-3PO", "R2-D2", "Darth Vader", "Leia Organa", "Owen Lars", "Beru Whitesun lars", "R5-D4", "Biggs Darklighter", "Obi-Wan Kenobi")

# Google's search query URL
# $url = "https://www.google.com/search?q="

# The part after the query that specifies it as an image.
# $image = "&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjQypLD2d_dAhVJ11MKHe-AA_wQ_AUIDigB&biw=1030&bih=748"
$gh = foreach ( $Student in $Students.keys) { $Students.$Student.GH}

# foreach( $_ in $Students.values.gh){ start-process "chrome.exe" "https://github.com/$_", '--profile-directory="Default' }
# function quicksearch() {$chars | % {$_.replace(' ', '+')} | % {start-process "chrome.exe" "$url+$_+$image", '--profile-directory="Default"'}}



function zoom() {Start-Process chrome "https://zoom.us/start/videomeeting"}
function remove-node() {Get-ChildItem -Recurse -Filter "node_modules" | ForEach-Object ($_) {remove-item $_.fullname -Recurse}}
function install-node() {Get-ChildItem -Recurse -Filter "package.json" | % ($_) {Start-Process powershell.exe -WorkingDirectory $_.fullname.replace('package.json', '') "-NoExit yarn install"}}


# $button1 = $Form.FindName('Button1')
# $Label1 = $Form.FindName('Label1')

# $Label1.Content = [datetime]::Now.ToString("HH:mm:ss");




# Fixes the "freeze" problem
function Update-Gui() {
  # Basically WinForms Application.DoEvents()
  $App.Dispatcher.Invoke([Windows.Threading.DispatcherPriority]::Background, [action] {})
}






#to stop run 
# $timer.stop() 
#cleanup 
# Unregister-Event thetimer

# Event handlers go here
$Form.add_Closing( {
    $Form.Close()
    $App.Shutdown()
    Stop-Process -Id $PID # or return your console: [Win32.Functions]::ShowWindow($hWnd,$SW_SHOW)
  })


# Finally
$App.Run($Form)
add-type -AssemblyName system.windows.forms
$Form = New-Object System.Windows.Forms.Form
$btn = New-Object System.Windows.Forms.Button
$Form.Controls.Add($btn)
$btn.add_Click( {$Form.Close()})
$Form.ShowDialog()
