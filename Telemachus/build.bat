rd /s /q  "$(ProjectDir)..\publish\GameData"
rd /s /q "$(ProjectDir)..\ksp-telemachus-dev\GameData\Telemachus"

xcopy "$(TargetDir)Servers.dll" "$(ProjectDir)..\publish\GameData\Telemachus\Plugins\" /e /y /i /r
xcopy "$(TargetDir)Telemachus.dll" "$(ProjectDir)..\publish\GameData\Telemachus\Plugins\" /e /y /i /r
xcopy "$(ProjectDir)..\Parts\*" "$(ProjectDir)..\publish\GameData\Telemachus\Parts\"  /e /y /i /r
xcopy "$(ProjectDir)..\WebPages\WebPages\src\*" "$(ProjectDir)..\publish\GameData\Telemachus\Plugins\PluginData\Telemachus\" /e /y /i /r
xcopy "$(ProjectDir)..\licences\*" "$(ProjectDir)..\publish\GameData\Telemachus\" /e /y /i /r
copy "$(ProjectDir)..\readme.md" "$(ProjectDir)..\publish\GameData\Telemachus\"

xcopy "$(ProjectDir)..\WebPages\WebPagesTest\src\*" "$(ProjectDir)..\ksp-telemachus-dev\GameData\Telemachus\Plugins\PluginData\Telemachus\test" /e /y /i /r
xcopy "$(ProjectDir)..\publish\GameData\*"  "$(ProjectDir)..\ksp-telemachus-dev\GameData\" /e /y /i /r