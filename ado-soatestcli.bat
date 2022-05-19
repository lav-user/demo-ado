set "PROJECT_NAME=Demo"
set "SOATEST_EXE=C:\Program Files\Parasoft\SOAtest & Virtualize\2022.1"
set "SOATEST_WORKSPACE=C:\Parasoft\workspace\soavirt\automation"

:: IMPORT PROJECT
"%SOATEST_EXE%\soatestcli.exe" -import %cd%\%PROJECT_NAME%

:: RUN FUNCTIONAL TESTS AND PUBLISH COV
"%SOATEST_EXE%\soatestcli.exe" -data %SOA_WORKSPACE% -resource %PROJECT_NAME% -config "user://Run Test with Application Coverage" -report %SOA_WORKSPACE%\report -publish -localsettings %SOA_WORKSPACE%\soatest.properties

:: PUBLISH
::jtestcli -staticcoverage "%DEPLOY_HOME%\monitor\static_coverage.xml" -runtimecoverage "%DEPLOY_HOME%\monitor\runtime_coverage\functional" -config "builtin://Calculate Application Coverage" -publish -property report.coverage.images="Default Project";"Default Project_Functional Test" -property session.tag="Functional Test"
