# rust-xcode-plugin

This plugin is provided as-is with no guarantees of any kind.

Syntax highlighting isn't great, but setting breakpoints in the GUI should work.

Based on: 
https://github.com/youknowone/rust-xcode-langspec
https://github.com/steventroughtonsmith/lua-xclangspec

## Install
Place the `Plug-ins` and `Specifications` folders in `~Library/Developer/Xcode`

You may have to quit and reopen Xcode once or twice and click the `Load Bundle` button in a popup that should appear automatically.

Additionally if your Xcode UUID is not listed [here](https://github.com/mtak-/rust-xcode-plugin/blob/master/Plug-ins/Rust.ideplugin/Contents/Info.plist), please make an issue (or a pull request!) and I'll add it.

You can check your UUID with this command:
```sh
$ defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID
```