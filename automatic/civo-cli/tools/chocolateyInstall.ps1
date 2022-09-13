﻿$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    unzipLocation  = $toolsDir

    url64          = 'https://github.com//civo/cli/releases/download/v1.0.37/civo-1.0.37-windows-amd64.zip'
    checksum64     = ''
    checksumType64 = ''
}

Install-ChocolateyZipPackage @packageArgs
