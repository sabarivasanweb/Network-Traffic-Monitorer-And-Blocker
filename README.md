<!-- markdownlint-configure-file { "MD004": { "style": "consistent" } } -->
<!-- markdownlint-disable MD033 -->
#

<p align="center">
    <strong>Network Traffic Monitorer And Blocker</strong>
</p>

<!-- markdownlint-enable MD033 -->

The Pi-hole® is a [DNS sinkhole](https://en.wikipedia.org/wiki/DNS_Sinkhole) that protects your devices from unwanted content without installing any client-side software.

- **Easy-to-install**: our dialogs walk you through the simple installation process in less than ten minutes
- **Resolute**: content is blocked in _non-browser locations_, such as ad-laden mobile apps and smart TVs
- **Responsive**: seamlessly speeds up the feel of everyday browsing by caching DNS queries
- **Lightweight**: runs smoothly with [minimal hardware and software requirements](https://docs.pi-hole.net/main/prerequisites/)
- **Robust**: a command-line interface that is quality assured for interoperability
- **Insightful**: a beautiful responsive Web Interface dashboard to view and control your Pi-hole
- **Versatile**: can optionally function as a [DHCP server](https://discourse.pi-hole.net/t/how-do-i-use-pi-holes-built-in-dhcp-server-and-why-would-i-want-to/3026), ensuring _all_ your devices are protected automatically
- **Scalable**: [capable of handling hundreds of millions of queries](https://pi-hole.net/2017/05/24/how-much-traffic-can-pi-hole-handle/) when installed on server-grade hardware
- **Modern**: blocks ads over both IPv4 and IPv6
- **Free**: open source software that helps ensure _you_ are the sole person in control of your privacy

-----


## Install Methods

### Method 1: Clone our repository and run

```bash
git clone --depth 1 https://github.com/sabarivasanweb/Network-Traffic-Monitorer-And-Blocker Pi-hole
cd "Pi-hole/automated install/"
sudo bash basic-install.sh
```


### Method 3: Using Docker to deploy Pi-hole

Please refer to the [Pi-hole docker repo](https://github.com/pi-hole/docker-pi-hole) to use the Official Docker Images.

## [Post-install: Make your network take advantage of Pi-hole](https://docs.pi-hole.net/main/post-install/)

Once the installer has been run, you will need to [configure your router to have **DHCP clients use Pi-hole as their DNS server**](https://discourse.pi-hole.net/t/how-do-i-configure-my-devices-to-use-pi-hole-as-their-dns-server/245). This router configuration will ensure that all devices connecting to your network will have content blocked without any further intervention.

If your router does not support setting the DNS server, you can [use Pi-hole's built-in DHCP server](https://discourse.pi-hole.net/t/how-do-i-use-pi-holes-built-in-dhcp-server-and-why-would-i-want-to/3026); be sure to disable DHCP on your router first (if it has that feature available).

As a last resort, you can manually set each device to use Pi-hole as their DNS server.

-----

Some of the statistics you can integrate include:

- Total number of domains being blocked
- Total number of DNS queries today
- Total number of ads blocked today
- Percentage of ads blocked
- Unique domains
- Queries forwarded (to your chosen upstream DNS server)
- Queries cached
- Unique clients


1. `http://pi.hole/admin/` (when using Pi-hole as your DNS server)
2. `http://<IP_ADDRESS_OF_YOUR_PI_HOLE>/admin/`
