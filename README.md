##  ApacheChangeConfig

A simple graphic script wich allows you to easily change the configuration activated in the apache


![Script-Image](https://raw.githubusercontent.com/kb05/ApacheChangeConfig/master/apacheConfig.png)


#### Requirements

* Zenity (sudo apt-get install zenity )
* Apache2 (sudo apt-get install Apache2 )

#### How works?

1. List all configuration files and request one from the user.
2. Disable all apache.conf environments
3. Enable the user .conf file
4. Restart the apache