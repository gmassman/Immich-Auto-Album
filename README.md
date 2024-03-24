# Immich Auto Album

This little docker image will import pictures from a `/source-photos` volume.
Each subfolder will create an album within Immich.

Build:

```
docker build --tag 'immich_auto_album' .
```

Run:

```
docker run 'immich_auto_album' -e IAA_IMMICH_URL=http://immich -e IAA_IMMICH_API_KEY=ABC123 -v /mnt/photos:/source-photos
```
