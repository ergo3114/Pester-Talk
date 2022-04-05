Describe "Computer setup correctly" {
    Context "Services" {
        It "Spooler service should be running" {
            $spooler = Get-Service Spooler
            $spooler.Status | Should -Be "Running"
        }

        It "Fax service should not be running" {
            $fax = Get-Service Fax
            $fax.Status | Should -Be "Stopped"
        }
    }
    Context "Folder path" {
        It "Should should not have this folder path" {
            {Get-Location C:\git\Pester2-Talk} | Should -Throw
            # Review error message
            #{Get-Location C:\git\Pester2-Talk} | Should -Not -Throw
        }   
    }
}