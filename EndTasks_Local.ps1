# Function to end a task by name
function End-TaskByName {
    param (
        [string]$processName
    )

    $process = Get-Process -Name $processName -ErrorAction SilentlyContinue

    if ($process -ne $null) {
        Write-Host "Ending task: $processName"
        Stop-Process -Name $processName -Force
    }
    else {
        Write-Host "Task not found: $processName"
    }
}

# Function to end a UWP app by name
function End-UwpAppByName {
    param (
        [string]$appName
    )

    $app = Get-AppxPackage | Where-Object { $_.Name -eq $appName }

    if ($app -ne $null) {
        Write-Host "Ending UWP app: $appName"
        Stop-Process -Id $app.PackageFamilyName -Force
    }
    else {
        Write-Host "UWP app not found: $appName"
    }
}

# End tasks for Discord, Lively Wallpaper, and Steam
End-TaskByName -processName "Discord"
End-UwpAppByName -appName "Lively"
End-TaskByName -processName "Steam"
