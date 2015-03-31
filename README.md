# gentoo-overlay
flatline's gentoo overlay

### HowTo add

`/etc/layman/layman.cfg`:
```
# uncomment:
overlay_defs : /etc/layman/overlays
```

`/etc/layman/overlays/flat235.xml`:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<repositories version="1.0">
  <repo quality="experimental" status="unofficial">
    <name>flat235</name>
    <description>flatline's gentoo overlay</description>
    <homepage>https://github.com/flat235/gentoo-overlay</homepage>
    <owner>
      <email>github@moritzbellach.de</email>
      <name>Moritz Bellach</name>
    </owner>
    <source type="git">git://github.com/flat235/gentoo-overlay.git</source>
  </repo>
</repositories>
```
