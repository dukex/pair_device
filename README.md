# Pair Device

This gem help you to pair your ruby application with IoT devices.

The first version of this gem is very inspired in the
`Passkey Entry` Association Models from Bluetooh Core V4.2, in B
BLUETOOTH SPECIFICATION Version 4.2 [Vol 1, Part A], we have the definition of
`Passkey Entry`:

```
5.2.4.4 Passkey Entry

The Passkey Entry association model is primarily designed for the scenario
where one device has input capability but does not have the capability to
display six digits and the other device has output capabilities. A good example
of this model is the PC and keyboard scenario.
The user is shown a six digit number (from "000000" to "999999") on the
device with a display, and is then asked to enter the number on the other
device. If the value entered on the second device is correct, the pairing is
successful. Note that there is a significant difference from a cryptographic point
of view between Passkey Entry and the PIN entry model used by Bluetooth
Core Specification 2.0 + EDR and earlier versions. In the Passkey Entry association model, the six digit number is independent of the security algorithm
and not an input to it, as is the case in the 2.0 + EDR security model. Knowing
the entered number is of no benefit in decrypting the encoded data exchanged
between the two devices.
```

You can read more clicking in the link *Core_V4.2.pdf* on the Resources section of this file.

To simplify your understanding about how to will work the pairing and the following messages, let to see a simple diagram and then we will explain it:


```
 [Device]                  [Your App]
(Initiator)                (Responder)
    |                           |
    |   PairDevice::Request.new |
    |-------------------------->|
    |                           |
    |      PairDevice::Response |
    |<--------------------------|
    |                           |
    |                           |
    |                           |
    TODO: describe confirm command
    ...
```

This diagram is very similar of others Bluetooth pairing, and this is the main
idea here, bluetooth protocol version 4 is very robust and largely used, so
because of that we resolve use this idea for this gem.


The first thing you can see on the above diagram, is the definition of the Device
and Your App respectively the *Initiator* and *Responder*.

The *Initiator*, like the name said, will initiate the pairing connection, this
gem don't assume any connection protocol, but to demonstrate how to use it, lets
assume in this documentation you are using HTTP to pair and transfer data, so the
*Initiator* send a http request to your app, you need create a Pairing Request and
returns to the *Initiator* a Pairing Response.

TODO: show examples


# Installation

Add this line to your application's Gemfile:

```ruby
gem 'pair_device'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pair_device

## Usage




## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Resources

[Security, Bluetooth Low Energy](https://www.bluetooth.com/~/media/files/specification/bluetooth-low-energy-security.ashx?la=en)
[Core_V4.2.pdf](https://www.bluetooth.org/DocMan/handlers/DownloadDoc.ashx?doc_id=286439&_ga=1.129786885.880762383.1476030947)
[Secure Simple Pairing Explained](http://www.ellisys.com/technology/een_bt07.pdf)


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pair_device. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

