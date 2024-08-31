
function .ps {
    $result = Import-Csv "$env:USERPROFILE\Powershell\resources\data.csv"
    $result | Where-Object command -like "*$($args[0])*"
}

.ps $args[0]