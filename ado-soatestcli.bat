set "PROJECT_NAME=Demo"
set "SOATEST_EXE=C:\Program Files\Parasoft\SOAtest & Virtualize\2022.1"
set "SOATEST_WORKSPACE=C:\Parasoft\workspace\soavirt\demo20222202"

:: IMPORT PROJECT
"%SOATEST_EXE%\soatestcli.exe" -data %SOATEST_WORKSPACE% -import %cd%\%PROJECT_NAME%

:: RUN FUNCTIONAL TESTS WITH COV
"%SOATEST_EXE%\soatestcli.exe" -data %SOATEST_WORKSPACE% -resource %PROJECT_NAME% -config "user://Example Configuration" -report %cd%\report -localsettings %SOATEST_WORKSPACE%\soatest.properties

:: PUBLISH
::jtestcli -staticcoverage "%DEPLOY_HOME%\monitor\static_coverage.xml" -runtimecoverage "%DEPLOY_HOME%\monitor\runtime_coverage\functional" -config "builtin://Calculate Application Coverage" -publish -property report.coverage.images="Default Project";"Default Project_Functional Test" -property session.tag="Functional Test"
