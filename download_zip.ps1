#$source = 'http://speedtest.tele2.net/10MB.zip'
# Destination to save the file
$destination = 'c:\10MB.zip'
$outpath = 'c:\10MB'
#Download the file
#Invoke-WebRequest -Uri $source -OutFile $destination


Add-Type -AssemblyName System.IO.Compression.FileSystem

[System.IO.Compression.ZipFile]::ExtractToDirectory($destination, $outpath)

#Expand-Archive C:\10MB.zip -DestinationPath C:\10MB