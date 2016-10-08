# uppsala-university-linux-servers-scripts
A few scripts to make our life easier while using the [Department of Information Technology](http://it.uu.se) Linux servers and some information about setting up [Uppsala's University](http://uu.se) services.

## Table of Contents
1. [Script explanation](#script-explanation)
2. [Set up scripts](#set-up-scripts)
3. [Other services](#services)

The addresses of the Department of Information Technology servers can be found at [Solaris x86\_64 and Solaris Sparc](http://www.it.uu.se/datordrift/faq/unixinloggning) and [Ubuntu and Scientific Linux](http://www.it.uu.se/datordrift/maskinpark/linux).
Picking between the Operating System is a personal thing, some servers contain programs other don't. For example Solaris servers have `ll` where Ubuntu do not but Ubuntu servers have `matlab` where Solaris don't.

## Script explanation: <a name="script-explanation"></a>
* `uussh` opens a terminal to server connected via `ssh`. 
* `proxyuu` creates a SOCKS 4/5 server on port specified by **UU\_LOCAL\_PROXY\_PORT**, forwarding the traffic to the server that it is connected.
* `mountuuspace` mounts the folder specified by **UU\_REMOTE\_FOLDER** to **UU\_LOCAL\_FOLDER**.
* `umountuuspace` unmounts the previously mounted folder by `mountuuspace`. If the folder is not mounted then this will output an error.

## Set up: <a name="set-up-scripts"></a>
If you cloned the repository you can just run the scripts (`./filename`). If you have copy pasted the content of the files then you would need to run `chmod +x filename` before you are able to run it.

* You need to set **UU\_USER** variable in the *uu\_settings* file, it should look something like *abcd1234*.
* [Optional] You should set the your choice of server to **UU\_SERVER**.
* [Optional] You can change the remote folder that is to be mounted shown at **UU\_REMOTE\_FOLDER** and the local at **UU\_LOCAL\_FOLDER** to what you like. In the default configuration the local folder is */home/USER/universitySpace*.
* You must manually create the path to **UU\_LOCAL\_FOLDER** in order to mount the remote folder successfully.
* [Optional] You can set the port of the SOCKS proxy server on **UU\_LOCAL\_PROXY\_PORT**.


## Services: <a name="services"></a>
* *eduroam*
* *printing (korint)*

### Printing (korint)
* *I wont be going through the process of making a payex account and linking your account to the university's access card.*

* To view the current printing queue [log in to cirrato](https://korint.uu.se/cirrato/LoginPage.aspx?mode=selfservice).
There you can view some information about the files in the queue and even delete them.

* Information on how to set it up to work as a [local printer on Linux](korint/README.md)

* If you don't want to go through all the trouble of installing the printer then you can just print from within a terminal.
To achieve this you can run `lpr -U abcd1234 -H ipp.korint.uu.se FILE_TO_PRINT` or `lp -U abcd1234 -h ipp.korint.uu.se FILE_TO_PRINT`, where in both cases *abcd1234* would be your username.

