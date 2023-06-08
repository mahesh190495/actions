$apiUrl = 'https://api.github.com/repos/helm/helm/releases/latest'
$response = Invoke-RestMethod -Uri $apiUrl
$latestVersion = $response.tag_name
$latestVersion = $latestVersion -replace 'v', ''
$ENV:LATEST_VERSION = $latestVersion
Write-Output "Helm latest version: $latestVersion"
