# Pharma Lookup

A Flutter project demonstrating how to scan 1D and 2D barcodes to look up pharmaceutical information.



https://github.com/yushulx/pharma-lookup/assets/2202306/21a5c49d-840e-418b-b293-cb206cbbd894



## Supported Platforms
- **Web**
- **Android**
- **iOS**
- **Windows**

## Data Source
[https://script.google.com/macros/s/AKfycbyPEx3THAbcLTNaJNOkQ1O3puTmQKXXOE_gkOGyKMzfIEUTr484qS8Dsi7-kTKpD333/exec](https://script.google.com/macros/s/AKfycbyPEx3THAbcLTNaJNOkQ1O3puTmQKXXOE_gkOGyKMzfIEUTr484qS8Dsi7-kTKpD333/exec)

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
 
    ![pharma-lookup](https://github.com/yushulx/pharma-lookup/assets/2202306/aca5c642-7c58-4337-a81f-7a29ee8c8b68)


## Try Online Demo
[https://yushulx.me/pharma-lookup/](https://yushulx.me/pharma-lookup/)
