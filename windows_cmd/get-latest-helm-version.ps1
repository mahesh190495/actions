if [ '${{ inputs.version }}' == "latest" ]; then
  $apiUrl = 'https://api.github.com/repos/helm/helm/releases/latest'
  $response = Invoke-RestMethod -Uri $apiUrl
  $latestVersion = $response.tag_name
  $ENV:LATEST_VERSION = $latestVersion
  Write-Output "Helm latest version: $latestVersion"
else:
  $latestVersion='${{ inputs.version }}'
  $ENV:LATEST_VERSION = $latestVersion
  Write-Output "Helm latest version: $latestVersion"
  
