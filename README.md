# zeek-ebury

This script attempts to detect the Ebury ssh backdoor based on having base64 in the ssh client string.

# Description:

Details about Ebury and original snort rules:
https://www.welivesecurity.com/2014/02/21/an-in-depth-analysis-of-linuxebury/

More recent versions of Ebury will sometimes break up their base64 with a space to throw off more
generic base64 regex.  As a result we stick with just checking for a trailing '=' padding character.  It's very simple and could miss some infections, but should result in a lot less false positives.
