#Super Simple Web Scraper by mRr3b00t
$urls = @()
$google = Invoke-WebRequest –Uri google.com -UseBasicParsing

foreach($link in $google.Links){

if($link.href.StartsWith("/")){

}
else{


$url = ([System.Uri][System.Uri]$link.href).Host -replace '^www\.'

$urls = $urls += $url

}

}

$urls | Sort-Object -Unique
