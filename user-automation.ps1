$username = "ankita_test"
$password = ConvertTo-SecureString "P@ss1234" -AsPlainText -Force

New-LocalUser -Name $username -Password $password -FullName "Ankita Test"

Add-LocalGroupMember -Group "Administrators" -Member $username

Write-Output "User created successfully"
