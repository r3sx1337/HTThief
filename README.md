# HTThief

This tool was developed with the intention of serving as a (simple but effective) way to transfer files protected by DLP, E/XDR and etc (exfiltration) in a stealthy way. Convert any type of file (eg executables, Office, Zip, images) into URLs and send them via simple GET.

# Author
Vinicius Vieira

# Why is this different from every other HTTP exfiltration technique?

The most common data exfiltration techniques via HTTP are based on file upload (encrypted or not). These techniques can be easily detected, either by anomalous behavior of the endpoint (uploading a file on an unknown website) or even by traffic (through DLP, for example), as well as being easily mitigated.
HTThief differs from the others because it encodes the raw file data in Base64 and divides it into small strings, which are passed via URL to the server. This makes detection and mitigation very difficult, because through the process of steganography of the file in URLs, it becomes practically impossible to detect that each one is actually a piece of a certain file.

# How it works?

# Tutorial

# Requires
