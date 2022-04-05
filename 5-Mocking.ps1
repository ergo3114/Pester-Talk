# Mocking a function to perform a test
# Sometimes you dont want to run a function/script
# unless you mean to

# BeforeAll will perform these steps before all tests as a whole
# BeforeEach will perform these steps before each test
BeforeAll {
    function MyCriticalFunction {
        # Perform a critical task like creating a user in AD
        # or deleting logs files
        return 'User Created'
    }
    # MyCriticalFunction
}

Describe "No Mocking Example" {
    It "Should return default value"{
        MyCriticalFunction | Should -Be 'User Created'
    }
}

Describe "Mocking Example" {
    BeforeEach {
        Mock MyCriticalFunction {return 1.1}
    }
    It "Should return 1.1" {
        MyCriticalFunction | Should -Be 1.1
    }
}

# Invoke-Pester C:\git\Pester-Talk\5-Mocking.ps1 -Show All