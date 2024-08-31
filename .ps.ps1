
function .ps {
    $result = Import-Csv .\data.csv
    $result | Where-Object command -like "*$($args[0])*"
}

.ps $args[0]