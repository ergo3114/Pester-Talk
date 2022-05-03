Describe "My first pester" {
    
    Context "Learn about context" {
        
        It "Should return true" {
            $true | Should -Be $true
        }

        It "The words should be the same" {
            "This is a test" | Should -BeExactly "This is a test"
        }
        
        It "Number comparison" {
            5 | Should -BeGreaterThan 4
            5 | Should -BeGreaterOrEqual 5
        }
    }
    #Context "Learn about context error" {
    #    It "Should return true" {
    #        $true | Should -Be $false
    #    }
    #}
}

# Invoke-Pester c:\git\Pester-Talk\2-MyFirstTest.ps1 -Show All