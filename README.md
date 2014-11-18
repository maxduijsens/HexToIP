HexToIP
=======

Convert Hex notation IP addresses into CIDR notation

Convert 0x000000000000abcdefabc IP addresses to 123.123.123.123
- Input: input.txt list of newline separated ip's in Foundstone format
- Output: output.txt list of newline separated ip's in CIDR format

WARNING
============
The script does not handle IPv6 correctly yet so it will simply strip off the first 24 bytes!
