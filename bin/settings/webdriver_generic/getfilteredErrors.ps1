#$linecount = (Get-Content ..\..\index.log).Length
#Add-Content -Path .\errors.log -Value "sequences = $linecount"
$store = Get-Content ".\errors.log" -Raw
foreach($line in Get-Content ..\..\index.log) {
    if(!($line -match 'No problem')){
        #create quick access and filter junk
        $line = $line -replace "\.\d\d\d  Generate "," "
        $line = $line -replace "sequences","HTMLReports"
        $line = $line -replace "\.testar",".html"
        #filter duplicates
        $ArrLine = $line.split(" ")
        $filepart = $ArrLine[6]+" "+$ArrLine[7]
        if(!($store | Select-String -Pattern $filepart -SimpleMatch)) {
            $store = $store + $filepart
            Add-Content -Path .\errors.log -Value "$line"
        }
    }
}
code .\errors.log