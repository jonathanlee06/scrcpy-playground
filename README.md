# scrcpy-playground
A playground for testing different capabilities of [scrcpy](https://github.com/Genymobile/scrcpy)

### 1. multi-window scrcpy
By default scrcpy supports launching multiple instances of scrcpy window by specifiying the device serial from `adb devices` command. However, it lacks the convenience of a simple command, which it requires you to check for the devices serial you want to mirror and enter the command one-by-one. Therefore, I've written a simple shell script to simplify the process. Check out the code here:
```bash
while read sn device; do
    scrcpy -s $sn &
done < <(adb devices | sed '1d')
```
Check out the file [here](https://github.com/jonathanlee06/scrcpy-playground/blob/master/multi-window.sh)

#### More to come...

<br/>

## :octocat: Author
[Jonathan Lee](https://github.com/jonathanlee06)

## :bookmark_tabs: Licenses
This project is licensed under the MIT license. See the [LICENSE](https://github.com/jonathanlee06/scrcpy-playground/blob/master/LICENSE) file for more info.
