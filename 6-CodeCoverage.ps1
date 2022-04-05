# Invoke-Pester C:\git\Pester-Talk\6-CodeCoverage.ps1 -CodeCoverage .\CodeCoverage.ps1

#$here = Split-Path -Parent $MyInvocation.MyCommand.Path
#$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
#. "$here\$sut"
. .\CodeCoverage.ps1

Describe "Code Coverage Example" {
    #It "Should Toggle" {
    #    MyFunction -Toggle | Should -Be 'Toggled'
    #}

    #It "Should run without params" {
    #    { MyFunction } | Should -Not -Throw
    #}

    #It "Should only except integers for int param" {
    #    { MyFunction -IntegerResponse "ThisIsAString" } | Should -Throw
    #}

    It "Should only except strings for string param" {
        { MyFunction -StringResponse 5 } | Should -Throw
    }
}

# Invoke-Pester C:\git\Pester-Talk\6-CodeCoverage.ps1 -CodeCoverage .\CodeCoverage.ps1 -CodeCoverageOutputFile .\CodeCoverage.xml