<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

#region begin GUI{ 

$Form = New-Object system.Windows.Forms.Form
$Form.ClientSize = '453,559'
$Form.text = "Form"
$Form.TopMost = $false

$TextBox1 = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline = $false
$TextBox1.width = 255
$TextBox1.height = 20
$TextBox1.location = New-Object System.Drawing.Point(8, 25)
$TextBox1.Font = 'Microsoft Sans Serif,10'

$TextBox2 = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline = $false
$TextBox2.width = 252
$TextBox2.height = 20
$TextBox2.location = New-Object System.Drawing.Point(8, 72)
$TextBox2.Font = 'Microsoft Sans Serif,10'

$Button1 = New-Object system.Windows.Forms.Button
$Button1.text = "Jibble"
$Button1.width = 162
$Button1.height = 30
$Button1.location = New-Object System.Drawing.Point(276, 23)
$Button1.Font = 'Microsoft Sans Serif,10'

$Button2 = New-Object system.Windows.Forms.Button
$Button2.text = "Training Kit"
$Button2.width = 165
$Button2.height = 30
$Button2.location = New-Object System.Drawing.Point(274, 60)
$Button2.Font = 'Microsoft Sans Serif,10'

$Button3 = New-Object system.Windows.Forms.Button
$Button3.text = "Handbook"
$Button3.width = 165
$Button3.height = 30
$Button3.location = New-Object System.Drawing.Point(274, 98)
$Button3.Font = 'Microsoft Sans Serif,10'

$Button4 = New-Object system.Windows.Forms.Button
$Button4.text = "Repl.it"
$Button4.width = 163
$Button4.height = 30
$Button4.location = New-Object System.Drawing.Point(274, 134)
$Button4.Font = 'Microsoft Sans Serif,10'

$Button5 = New-Object system.Windows.Forms.Button
$Button5.text = "Dashboard"
$Button5.width = 161
$Button5.height = 30
$Button5.location = New-Object System.Drawing.Point(275, 172)
$Button5.Font = 'Microsoft Sans Serif,10'

$Button6 = New-Object system.Windows.Forms.Button
$Button6.text = "Attendance"
$Button6.width = 161
$Button6.height = 30
$Button6.location = New-Object System.Drawing.Point(276, 209)
$Button6.Font = 'Microsoft Sans Serif,10'

$Button7 = New-Object system.Windows.Forms.Button
$Button7.text = "PM Daily"
$Button7.width = 119
$Button7.height = 30
$Button7.location = New-Object System.Drawing.Point(316, 248)
$Button7.Font = 'Microsoft Sans Serif,10'

$Button8 = New-Object system.Windows.Forms.Button
$Button8.text = "PM Weekly"
$Button8.width = 119
$Button8.height = 30
$Button8.location = New-Object System.Drawing.Point(316, 284)
$Button8.Font = 'Microsoft Sans Serif,10'

$Button9 = New-Object system.Windows.Forms.Button
$Button9.text = "1 on 1"
$Button9.width = 119
$Button9.height = 30
$Button9.location = New-Object System.Drawing.Point(316, 319)
$Button9.Font = 'Microsoft Sans Serif,10'

$Button10 = New-Object system.Windows.Forms.Button
$Button10.text = "spreadsheet"
$Button10.width = 119
$Button10.height = 30
$Button10.location = New-Object System.Drawing.Point(316, 355)
$Button10.Font = 'Microsoft Sans Serif,10'

$Button11 = New-Object system.Windows.Forms.Button
$Button11.text = "button"
$Button11.width = 60
$Button11.height = 30
$Button11.location = New-Object System.Drawing.Point(122, 100)
$Button11.Font = 'Microsoft Sans Serif,10'

$Button12 = New-Object system.Windows.Forms.Button
$Button12.text = "button"
$Button12.width = 60
$Button12.height = 30
$Button12.location = New-Object System.Drawing.Point(194, 100)
$Button12.Font = 'Microsoft Sans Serif,10'

$Button13 = New-Object system.Windows.Forms.Button
$Button13.text = "button"
$Button13.width = 60
$Button13.height = 30
$Button13.location = New-Object System.Drawing.Point(122, 135)
$Button13.Font = 'Microsoft Sans Serif,10'

$Button14 = New-Object system.Windows.Forms.Button
$Button14.text = "button"
$Button14.width = 60
$Button14.height = 30
$Button14.location = New-Object System.Drawing.Point(194, 136)
$Button14.Font = 'Microsoft Sans Serif,10'

$Button15 = New-Object system.Windows.Forms.Button
$Button15.text = "button"
$Button15.width = 60
$Button15.height = 30
$Button15.location = New-Object System.Drawing.Point(122, 172)
$Button15.Font = 'Microsoft Sans Serif,10'

$Button16 = New-Object system.Windows.Forms.Button
$Button16.text = "button"
$Button16.width = 60
$Button16.height = 30
$Button16.location = New-Object System.Drawing.Point(194, 173)
$Button16.Font = 'Microsoft Sans Serif,10'

$RadioButton1 = New-Object system.Windows.Forms.RadioButton
$RadioButton1.text = "radioButton"
$RadioButton1.AutoSize = $true
$RadioButton1.width = 104
$RadioButton1.height = 20
$RadioButton1.location = New-Object System.Drawing.Point(13, 113)
$RadioButton1.Font = 'Microsoft Sans Serif,10'

$RadioButton2 = New-Object system.Windows.Forms.RadioButton
$RadioButton2.text = "radioButton"
$RadioButton2.AutoSize = $true
$RadioButton2.width = 104
$RadioButton2.height = 20
$RadioButton2.location = New-Object System.Drawing.Point(13, 150)
$RadioButton2.Font = 'Microsoft Sans Serif,10'

$RadioButton3 = New-Object system.Windows.Forms.RadioButton
$RadioButton3.text = "radioButton"
$RadioButton3.AutoSize = $true
$RadioButton3.width = 104
$RadioButton3.height = 20
$RadioButton3.location = New-Object System.Drawing.Point(13, 185)
$RadioButton3.Font = 'Microsoft Sans Serif,10'

$Button17 = New-Object system.Windows.Forms.Button
$Button17.text = "button"
$Button17.width = 245
$Button17.height = 30
$Button17.location = New-Object System.Drawing.Point(9, 217)
$Button17.Font = 'Microsoft Sans Serif,10'

$Label2 = New-Object system.Windows.Forms.Label
$Label2.text = "Working Directory"
$Label2.AutoSize = $true
$Label2.width = 25
$Label2.height = 10
$Label2.location = New-Object System.Drawing.Point(101, 7)
$Label2.Font = 'Microsoft Sans Serif,10'

$Label3 = New-Object system.Windows.Forms.Label
$Label3.text = "GitHub Repo"
$Label3.AutoSize = $true
$Label3.width = 25
$Label3.height = 10
$Label3.location = New-Object System.Drawing.Point(101, 50)
$Label3.Font = 'Microsoft Sans Serif,10'

$DataGridView1 = New-Object system.Windows.Forms.DataGridView
$DataGridView1.width = 293
$DataGridView1.height = 250
$DataGridView1.location = New-Object System.Drawing.Point(9, 259)

$Button18 = New-Object system.Windows.Forms.Button
$Button18.text = "BATCH"
$Button18.width = 114
$Button18.height = 96
$Button18.location = New-Object System.Drawing.Point(318, 397)
$Button18.Font = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($TextBox1, $TextBox2, $Button1, $Button2, $Button3, $Button4, $Button5, $Button6, $Button7, $Button8, $Button9, $Button10, $Button11, $Button12, $Button13, $Button14, $Button15, $Button16, $RadioButton1, $RadioButton2, $RadioButton3, $Button17, $Label2, $Label3, $DataGridView1, $Button18))

$DataGridView1.ColumnCount = 4
$DataGridView1.ColumnHeadersVisible = $true
	
#Set the column header names.
$DataGridView1.Columns[0].Name = "Name"
$DataGridView1.Columns[1].Name = "GH"
$DataGridView1.Columns[2].Name = "OS"
$DataGridView1.Columns[3].Name = "Rating"
	
#Populate the rows.
$row1 = @("Meatloaf", "Main Dish", "boringMeatloaf", "boringMeatloafRanking")
$row2 = @("Key Lime Pie", "Dessert", "lime juice evaporated milk", "****")
$row3 = @("Orange-Salsa Pork Chops", "Main Dish", "pork chops, salsa, orange juice", "****")
$row4 = @("Black Bean and Rice Salad", "Salad", "black beans, brown rice", "****")
$row5 = @("Chocolate Cheesecake", "Dessert", "cream cheese", "***")
$row6 = @("Black Bean Dip", "Appetizer", "black beans, sour cream", "***")
$rows = @( $row1, $row2, $row3, $row4, $row5, $row6 )
	
foreach ($row in $rows) {
  $dataGridView.Rows.Add($row)
}


$PM = @{
  GitHub = "FireInjun"
  Name   = [ordered]@{First = 'Mykeal'; Last = 'Kenny'}
}


$Button4
$Students = [ordered]@{
  st0 = [ordered]@{Name = 'Arthur Bates Jr.'; GH = 'AliasAJ'; OS = 'Win'; TZ = 'EST'}
  st1 = [ordered]@{Name = 'Erica Thompson' ; GH = 'ericathompson'; OS = 'Mac'; TZ = 'PST'}
  st2 = [ordered]@{Name = 'James Phillips'; GH = 'CASDFJ'; OS = 'Win'; TZ = 'EST'}
  st3 = [ordered]@{Name = 'Jurgen Kela' ; GH = 'kelajatu'; OS = 'Mac'; TZ = 'EST'}
  st4 = [ordered]@{Name = 'Kyle Meltzer'; GH = 'meltzerkyle'; OS = 'Mac'; TZ = 'CST'}
  st5 = [ordered]@{Name = 'Sam Khaled'; GH = 'AppMkrATL'; OS = 'Win'; TZ = 'EST'}
  st6 = [ordered]@{Name = 'Tim Zulf'; GH = 'Tulf'; OS = 'Linux-Ubuntu'; TZ = 'EST'}
}

#-----------------------------------------------------------------------
# Button Definitions Below:
#-----------------------------------------------------------------------
# Button1: Jibble
# Button2: Training Kit
# Button3: Handbook
# Button4: Replit
# Button5: Dashboard
# Button6: Attendance
# Button7: PM Daily
# Button8: PM Weekly
# Button9: 1 on 1
# Button10: spreadsheet
# Button11: 
# Button12: 
# Button13: 
# Button14: 
# Button15: 
# Button16: 
# Button17: 
# Button18: Batch
#-----------------------------------------------------------------------
# Variables here:
#-----------------------------------------------------------------------
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
  prcheck      = "https://github.com/LambdaSchool/Intro-Python/pulls?utf8=%E2%9C%93&q=is%3Apr+is%3Aopen+"
  sandbox      = "https://codesandbox.io/s/github//Sprint-Challenge-React-Wars"
}
# Code Sandbox 
# https://github.com/FireInjun/Sprint-Challenge-React-Wars
# https://codesandbox.io/s/github/FireInjun/Sprint-Challenge-React-Wars

#-----------------------------------------------------------------------
# Basic Functions here:
#-----------------------------------------------------------------------
function web($arg1) { start-process chrome "https://github.com/$arg1"}

#Write your logic code here

# function zoom(){Start-Process chrome "https://zoom.us/start/videomeeting"}
# function remove-node(){Get-ChildItem -Recurse -Filter "node_modules" | ForEach-Object ($_) {remove-item $_.fullname -Recurse}}
# function install-node(){Get-ChildItem -Recurse -Filter "package.json" | % ($_) {Start-Process powershell.exe -WorkingDirectory $_.fullname.replace('package.json', '') "-NoExit yarn install"}}




[void]$Form.ShowDialog()