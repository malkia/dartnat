echo BALLLS!
dir
dir __main__
pushd %~dp0
dir *.dart /s/b
dart %*
