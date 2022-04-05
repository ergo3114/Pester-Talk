Describe "My first pester" {
    Context "Learn about context" {
        It "Should return true" {
            $true | Should -Be $true
        }
    }
    #Context "Learn about context error" {
    #    It "Should return true" {
    #        $true | Should -Be $false
    #    }
    #}
}

# Invoke-Pester c:\git\Pester-Talk\2-MyFirstTest.ps1 -Show All