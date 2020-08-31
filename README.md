## furiousgeorge/collectd

A fairly simple collectd installation. Basically what you get when you build
on a clean Ubuntu installation, but with RRD support.

Derived from [angrybytes/collectd](https://github.com/AngryBytes/docker-images/tree/master/collectd), this image includes snmp plugin support.

### Builtin defaults:

    Config file       /etc/collectd.conf
    PID file          /var/run/collectd.pid
    Plugin directory  /usr/local/lib/collectd
    Data directory    /var/lib/collectd

Use a volume to provide custom configuration, e.g.:
```
docker run -v /srv/collectd/collectd.conf:/etc/collectd.conf:ro furiousgeorge/collectd
```


**An update was made to allow this container to monitor the host system**:

* You must use the --privileged flag
* You must mount /proc to the container

Here is an example of the run:

```
docker run --privileged -v /srv/collectd/collectd.conf:/etc/collectd.conf:ro -v /proc:/mnt/proc:ro furiousgeorge/collectd
```
