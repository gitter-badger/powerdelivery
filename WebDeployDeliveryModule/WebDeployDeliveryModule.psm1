function Initialize-WebDeployDeliveryModule {

	Register-DeliveryModuleHook 'PreDeploy' {
	
		$moduleConfig = Get-BuildModuleConfig
		$webDeployments = $moduleConfig.WebDeploy

		if ($webDeployments) {
		
			Invoke-BuildConfigSections $webDeployments "Publish-WebDeploy"
		}
	}
}