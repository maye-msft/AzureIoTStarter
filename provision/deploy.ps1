
$params = Get-Content "./params.json" | ConvertFrom-Json

$currentPath = Convert-Path .

Import-Module "../AzureProvisionPSM/modules/login.psm1"

Write-Host "INFO" "Start Setup......"

LoginWithPrincipal `
    -applicationId $params.applicationId `
    -applicationSecret $params.applicationSecret `
    -subscriptionId $params.subscriptionId `
    -tenantId $params.tenantId `
    -cloud $params.azureCloud