# rust-xcode-plugin

This plugin is provided as-is with no guarantees of any kind.

Syntax highlighting isn't great, but setting breakpoints in the GUI should work.

Based on: 
https://github.com/youknowone/rust-xcode-langspec
https://github.com/steventroughtonsmith/lua-xclangspec

If your Xcode UUID is not listed [here](https://github.com/BrainiumLLC/rust-xcode-plugin/blob/master/Plug-ins/Rust.ideplugin/Contents/Info.plist), please make an issue (or a pull request!) and we'll add it.

You can check your UUID with this command:
```sh
$ defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID
```
Once the UUID is added, execute the `setup.sh` script

You may have to quit and reopen Xcode once or twice and click the `Load Bundle` button in a popup that should appear automatically.

## Manual Install

Make sure that your terminal app has the permission to write into the `Xcode.app` directory. You could run `touch /Applications/Xcode.app/Contents/test.txt` to test.

Place the `Plug-ins` folders in `~/Library/Developer/Xcode`

Place the `Rust.xclangspec` in `/Applications/Xcode.app/Contents/SharedFrameworks/SourceModel.framework/Versions/A/Resources/LanguageSpecifications`

Place `Xcode.SourceCodeLanguage.Rust.plist` in `/Applications/Xcode.app/Contents/SharedFrameworks/SourceModel.framework/Versions/A/Resources/LanguageMetadata`
