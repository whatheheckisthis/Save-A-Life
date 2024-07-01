#SAL

React Native + Google Vision API mobile application to identify objects in pictures taken using an android phone. Technically could also be compiled into an ios app but needs testing.

## Screenshots
![coffee](https://i.imgur.com/5MTzEz1.png)

![pepsi](http://i.imgur.com/WsRgp1t.png)

## Getting Started

First, install dependencies by running
```
npm install
```
Get an API key for Google Cloud Vision [here](https://console.cloud.google.com/apis/credentials), then replace it in config.json
```
"apiKey": "please_enter_your_api_key_here"
```

To run in debug mode (youd need to connect an actual android device that can be found with adb)
```
react-native run-android
```

### Prerequisites

You'd need 
* Android SDK (Easiest to download everything with [Android Studio](https://developer.android.com/studio/index.html)) 
* npm or yarn
* Your own Google Cloud Vision Api key. Get one [here](https://console.cloud.google.com/apis/credentials)

## Building an apk

You'd want to generate a signing key and build the apk like [here](https://facebook.github.io/react-native/docs/signed-apk-android.html)

## Built With

* [create-react-native-app](https://github.com/react-community/create-react-native-app) - Create a React Native app on any OS with no build config.
* [Google Cloud Vision API](https://cloud.google.com/vision/) - Allows developers to easily integrate vision detection features within applications, including image labeling, face and landmark detection, optical character recognition (OCR), and tagging of explicit content.

* [react-native-camera](https://github.com/lwansbrough/react-native-camera) - A Camera component for React Native.
* [react-native-image-resizer](https://github.com/bamlab/react-native-image-resizer) - Resize local images with React Native
* [react-native-image-to-base64](https://github.com/xfumihiro/react-native-image-to-base64) - React Native module to get Image's base64 string
* [react-native-spinkit](https://github.com/maxs15/react-native-spinkit) - A collection of animated loading indicators


## License

## Software Licensing Agreement (SAL)

This repository is governed by the terms of the Software Licensing Agreement (SAL) as detailed below.


Software Licensing Agreement

This Software Licensing Agreement ("Agreement") governs the use of the lane detection software ("SAL") developed under the Software Licensing Agreement (SAL), from now on referred to as "Licensor."

1. License Grant

Licensor grants Licensee a non-exclusive, non-transferable license to use the Software in accordance with the terms and conditions set forth in this Agreement.

2. Restrictions

Licensee shall not:

Modify, adapt, translate, or create derivative works of the Software.
Reverse engineer, decompile, disassemble, or otherwise attempt to derive the source code of the Software.
Distribute, sublicense, lease, rent, or loan the Software to any third party without prior written consent from Licensor.


3. Ownership

Licensor retains all rights, title, and interest in and to the Software, including all intellectual property rights therein.

4. Warranty Disclaimer

THE SOFTWARE IS PROVIDED "AS IS," WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT.

5. Limitation of Liability

IN NO EVENT SHALL LICENSOR BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT, OR CONSEQUENTIAL DAMAGES ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THE SOFTWARE, WHETHER OR NOT LICENSOR HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

6. Governing Law

This Agreement shall be governed by and construed in accordance with the laws of New Zealand, without regard to its conflict of law principles.

7. Entire Agreement

This Agreement constitutes the entire agreement between the parties concerning the Software and supersedes all prior agreements and understandings, whether written or oral, relating to its subject matter.

## Acknowledgments

* Inspiration https://hackernoon.com/building-silicon-valleys-hot-dog-app-in-one-night-aab8969cef0b
