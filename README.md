# Pharma Lookup

A Flutter project demonstrating how to scan 1D and 2D barcodes to look up pharmaceutical information.

## Supported Platforms
- **Web**
- **Android**
- **iOS**
- **Windows**

## Getting Started
1. Apply for a [30-day trial license](https://www.dynamsoft.com/customer/license/trialLicense/?product=dbr) and replace the license key in the `global.dart` file with your own:

    ```dart
    Future<int> initBarcodeSDK() async {
        int ret = await barcodeReader.setLicense(
            'LICENSE-KEY');
        await barcodeReader.init();
        await barcodeReader.setBarcodeFormats(BarcodeFormat.ALL);
        return ret;
    }
    ```

2. Run the project:

    ```
    flutter run
    # flutter run -d windows
    # flutter run -d edge
    ```
    ![pharma-look-up](https://github.com/yushulx/pharma-lookup/assets/2202306/c12bcbf0-cf88-4b8b-b97c-94bd1bd56d66)

## Try Online Demo
[https://yushulx.me/pharma-lookup/](https://yushulx.me/pharma-lookup/)
