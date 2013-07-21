function RegisterMSTestHook {
	[CmdletBinding()]
	param(
		[Parameter(Position=0,Mandatory=1)] $testSectionName
	)

	$moduleConfig = Get-BuildModuleConfig
	$msTestSection = $moduleConfig.MSTest
	
	if ($msTestSection) {
		$testSection = $msTestSection[$testSectionName]
		if ($testSection) {
		
			Invoke-BuildConfigSections $testSection "Invoke-MSTest"
		}
	}
}

function Initialize-MSTestDeliveryModule {

	Register-DeliveryModuleHook 'PreTestUnits' {
		RegisterMSTestHook 'UnitTests'
	}
	
	Register-DeliveryModuleHook 'PreTestAcceptance' {
		RegisterMSTestHook 'AcceptanceTests'
	}
}
