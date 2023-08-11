# HTThief

This tool was developed with the intention of serving as a (simple but effective) way to transfer files protected by DLP, E/XDR and etc (exfiltration) in a stealthy way. Convert any type of file (eg executables, Office, Zip, images) into URLs and send them via simple GET.

# Author
Vinicius Vieira

# Why is this different from every other HTTP exfiltration technique?

The most common data exfiltration techniques via HTTP are based on file upload (encrypted or not). These techniques can be easily detected, either by anomalous behavior of the endpoint (uploading a file on an unknown website) or even by traffic (through DLP, for example), as well as being easily mitigated.
HTThief differs from the others because it encodes the raw file data in Base64 and divides it into small strings, which are passed via URL to the server. This makes detection and mitigation very difficult, because through the process of steganography of the file in URLs, it becomes practically impossible to detect that each one is actually a piece of a certain file.

# How it works?

# Tutorial

HTThief is based on two scripts, one to be executed on the server/attacker machine (who will receive the file) and another on the client (machine that will send the file):

```
┌──(kali㉿kali)-[~/HTThief]
└─$ ls -l
total 8
-rwxr-xr-x 1 kali kali 2681 Aug 10 09:13 client.sh
-rwxr-xr-x 1 kali kali  846 Aug 10 09:11 server.sh

```

After choosing the file to be sent, first you must run server.sh on the attacking machine:

![h1](https://github.com/V1n1v131r4/HTThief/assets/1153876/48c9c3eb-250b-429d-9b0a-9af753e87709)



On the target machine, run client.sh and fill in the absolute path of the file that should be sent:

![h2](https://github.com/V1n1v131r4/HTThief/assets/1153876/d708c3de-0553-49c5-9319-fde9c393f906)


After sending the file, go back to the attacking machine, type "yes" for the script flow to end.
At the end of receiving, choose the original extension of the file so that it is originally reassembled on the attacking machine.

![h3](https://github.com/V1n1v131r4/HTThief/assets/1153876/e3a3f84d-3f13-4908-acf9-26d5766edcb0)

![h4](https://github.com/V1n1v131r4/HTThief/assets/1153876/86d891d5-5aa2-45a0-93d2-781ac72f7277)


# Requires
