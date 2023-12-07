#!/usr/bin/env bash

set -x

# Create plug-ins directory if it doesn't exist
plugins_dir=~/Library/Developer/Xcode/Plug-ins/
if [ ! -d "$plugins_dir" ]; then
	mkdir $plugins_dir
fi

# Copy the IDE Plugin to the plug-ins directory

cp -r Plug-ins/Rust.ideplugin $plugins_dir

#Get the selected Xcode.app's path
xcode_path=$(xcode-select -p)
xcode_path=$(dirname $xcode_path)

# Get Specifications directory
spec_dir="${xcode_path}/SharedFrameworks/SourceModel.framework/Versions/A/Resources/LanguageSpecifications"

# Copy the language specification to the specs directory
cp Specifications/Rust.xclangspec $spec_dir

result=$?
if [ $result -ne 0 ]; then
    echo "Error copying Rust.xclangspec; do you need to run this script as root?"
    exit $result
fi

#cp Specifications/Rust.xcspec $spec_dir

# Get language metadata directory
metadata_dir="${xcode_path}/SharedFrameworks/SourceModel.framework/Versions/A/Resources/LanguageMetadata"

# Copy the source code language plist to the metadata directory
cp Xcode.SourceCodeLanguage.Rust.plist $metadata_dir

result=$?
if [ $result -ne 0 ]; then
    echo "Error copying Xcode.SourceCodeLanguage.Rust.plist; do you need to run this script as root?"
    exit $result
fi

defaults read ${xcode_path}/Info DVTPlugInCompatibilityUUID

echo "Please restart Xcode"
