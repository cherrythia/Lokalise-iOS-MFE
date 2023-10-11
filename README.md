# Lokalise-iOS-MFE
This is the MFE project
The project has a localizable strings file with key "ota_key" 
-----------------------------------------------------------------------
1. Cd into folder Lokalise-iOS-MFE
2. Download dependencies in cartfile by running this command 
`carthage update --new-resolver --platform iOS --verbose --use-xcframeworks`
3. Build xcframeworks to be used in base app 
`carthage build --no-skip-current --cache-builds --use-xcframeworks --platform iOS --verbose`

