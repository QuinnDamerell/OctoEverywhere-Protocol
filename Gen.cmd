del /S /Q cs\*
mkdir cs
pushd cs
..\flatc_build\flatc.exe --csharp ..\OctoEverywhereProtocol.fbs
del /S /Q ..\..\OctoStream\OctoStream\OctoClients\Proto\*
xcopy .\octoprint_octoeverywhere\Proto\ ..\..\OctoStream\OctoStream\OctoClients\Proto\ /E/H
popd

del /S /Q py\*
mkdir py
pushd py
..\flatc_build\flatc.exe --python ..\OctoEverywhereProtocol.fbs
del /S /Q ..\..\OctoPrint-OctoEverywhere\octoeverywhere\Proto\*
xcopy .\octoeverywhere\Proto\ ..\..\OctoPrint-OctoEverywhere\octoeverywhere\Proto\ /E/H
popd