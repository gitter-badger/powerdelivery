function Initialize-MSBuildDeliveryModule {

	Register-DeliveryModuleHook 'PreCompile' {
	
		$moduleConfig = Get-BuildModuleConfig
		$msBuildProjects = $moduleConfig.MSBuild
		
		$currentDirectory = Get-Location

		if ($msBuildProjects) {
			
			$msBuildProjects.Keys | % {
				$invokeArgs = @{}
				
				$project = $msBuildProjects[$_]
				
				Invoke-BuildConfigSection $project "Invoke-MSBuild"	
				
				Set-Location $currentDirectory
			}
		}
	}
}
