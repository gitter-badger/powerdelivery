<# PowerDelivery.psd1

Manifest for PowerShell module.

http://www.powerdelivery.io
#>

@{
ModuleToProcess = 'PowerDelivery.psm1'

# Version number of this module.
ModuleVersion = '3.0.0'

# ID used to uniquely identify this module
GUID = 'C38CEA5C-260C-445B-BFDD-1BC3C4B87B56'

# Author of this module
Author = 'Jayme C Edwards'

# Company or vendor of this module
CompanyName = 'Jayme C Edwards'

# Copyright statement for this module
Copyright = 'Copyright (c) 2015 Jayme C Edwards. All rights reserved.'

# Description of the functionality provided by this module
Description = 'A secure, convention-based framework for continuous deployment with Windows Powershell.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Minimum version of the .NET Framework required by this module
DotNetFrameworkVersion = '3.5'

RequiredModules = @('PowerDeliveryNode')

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'
}
