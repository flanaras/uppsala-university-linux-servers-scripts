#!/bin/bash
# AddPrinter, version 1.0 (2010-04-10)
# created by Ricoh Sweden
# Henric Carlström (henric.carlstrom@ricoh.se)
# Changed config to use no compression "?compression=none" Anders Lundgren  20131111

lpadmin -p Korint-FollowPrint -P ./PPD/Korint-FollowPrint.ppd -v ipp://ipp.korint.uu.se/printers/Korint-FollowPrint?compression=none -L "Uppsala University FollowPrint" -D "" -E
echo "The FollowPrint printer for Uppsala University has been installed to your computer"

