# We can have multiple services we need to check on a device

# Invoke-Pester C:\git\Pester-Talk\4-BuildonPractical.ps1 -Show All

Describe "Computer setup correctly" {
    Context "Services" {
        It "<Service> should be <Status>" -TestCases @(
            @{Service = 'spooler'; Status = 'Running'}
            @{Service = 'fax'; Status = 'Stopped'}
            @{Service = 'Winmgmt'; Status = 'Running'}
            @{Service = 'netlogon'; Status = 'Stopped'}
        ){ # These have to be on the same line or errors outs
            $object = Get-Service $Service
            $object.Status | Should -Be $Status
        }
    }
}