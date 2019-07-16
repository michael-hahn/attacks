## Run wget experiment
CVE: 2016-4971
Ref: https://www.exploit-db.com/exploits/40064
You can easily run this experiment by running 
```
vagrant up
``` 
in this directory (or where your `Vagrantfile` is located).
However:
- To capture data provenance, you must replace the `client` vagrant box in `Vagrantfile` with a box that has `CamFlow` installed. 
- To reproduce the wget attack, you must also have the correct version of `wget` program installed in the `client` vagrant box.
