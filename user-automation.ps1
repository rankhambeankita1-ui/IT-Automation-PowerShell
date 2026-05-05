try {
    $username = Read-Host "Enter username"
    $passwordInput = Read-Host "Enter password"

    $password = ConvertTo-SecureString $passwordInput -AsPlainText -Force

    New-LocalUser -Name $username -Password $password -FullName $username -Description "Created via automation"

    Add-LocalGroupMember -Group "Administrators" -Member $username

    Write-Output "User $username created successfully and added to Administrators group."
}
catch {
    Write-Output "Error occurred while creating user."
}
