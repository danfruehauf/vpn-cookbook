vpn Cookbook
===============
Chef cookbook to configure VPN servers.

VPN server supported:
 * OpenSSH

Requirements
------------
Not much, just a Linux (or Linux like) system.

Attributes
----------
#### vpn::nat
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
</table>

#### vpn::openssh
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
</table>

Usage
-----
#### vpn::nat
```
include_recipe "vpn::nat"
```

#### vpn::openssh
```
include_recipe "vpn::openssh"
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
 * Dan Fruehauf <malkodan@gmail.com>
