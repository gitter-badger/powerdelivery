function Initialize-RoundhouseDeliveryModule {

	Register-DeliveryModuleHook 'PostDeploy' {
	
		$moduleConfig = Get-BuildModuleConfig
		$roundhouseDatabases = $moduleConfig.Roundhouse

		if ($roundhouseDatabases) {
		
			Invoke-BuildConfigSections $roundhouseDatabases "Invoke-Roundhouse"
		}
	}
}