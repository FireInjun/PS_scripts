Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form
$Form.Text = "Form"
$Form.TopMost = $true
$Form.Width = 200
$Form.Height = 200

$GetDate = New-Object system.windows.Forms.Button
$GetDate.Text = "GetDate"
$GetDate.Width = 60
$GetDate.Height = 30
$GetDate.Add_Click( {
    #add here code triggered by the event
    $Results.Text = Get-Date
  })
$GetDate.location = new-object system.drawing.point(60, 60)
$GetDate.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($GetDate)

$Results = New-Object system.windows.Forms.TextBox
$Results.Text = ""
$Results.Width = 100
$Results.Height = 20
$Results.location = new-object system.drawing.point(40, 23)
$Results.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($Results)

[void]$Form.ShowDialog()
$Form.Dispose()