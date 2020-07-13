# oxxo-ios-integ
## Setup

0. `gem install cocoapods` if you don't have `pod` on your laptop. [https://cocoapods.org/](https://cocoapods.org/)
1. clonet the repo
2. Run `pod install`
3. Update [AppDelegate.swift](https://github.com/pololi-stripe/oxxo-ios-integ/blob/master/oxxo-ios-integ/AppDelegate.swift#L20) to use your own stripe public key
4. Update [ViewController.swift](https://github.com/pololi-stripe/oxxo-ios-integ/blob/master/oxxo-ios-integ/ViewController.swift#L24) to use your own backend
5. `open oxxo-ios-integ.xcworkspace`, build the project and you should be able to see the following in the simulator
<img src="https://github.com/pololi-stripe/oxxo-ios-integ/raw/master/oxxo-ios-example.jpg" alt="example" width="400">

## OXXO Integration Guide
[OXXO accept a payment](https://site-admin.stripe.com/docs/payments/oxxo?platform=ios&lang=ruby)
