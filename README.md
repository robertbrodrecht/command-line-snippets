Helpful Command Line Snippets
=============================

*Open App As Root:*
sudo -b "/Applications/TextWrangler.app/Contents/MacOS/TextWrangler"

*GZip A Folder:*
tar czf GZIPNAME.tgz FOLDERNAME

*Split a file into chunks:*
split -b 500m FILENAME FILENAME_

*Restore split file:*
cat FILENAME_a* > FILENAME

*Clear DNS Cache:*
sudo dscacheutil -flushcache

*GitHub SSH Key:*
cd ~/.ssh/
ssh-keygen -t rsa -C "robertdot@gmail.com"
pbcopy < ~/.ssh/id_rsa.pub
# Add Key on GitHub Account > SSH Keys and paste code in that is in clipboard.
ssh -T git@github.com

*Symlink*
cd /folder/where/link/goes/
link -s /real/folder/

*Encrypt and Decrypt a file with OpenSSL:*
Coming soon.
