Helpful Command Line Snippets
=============================

*Open App As Root:*

<pre><code>sudo -b "/Applications/TextWrangler.app/Contents/MacOS/TextWrangler"</code></pre>


*GZip A Folder:*

<pre><code>tar czf GZIPNAME.tgz FOLDERNAME</code></pre>


*Split a file into chunks:*

<pre><code>split -b 500m FILENAME FILENAME_</code></pre>


*Restore split file:*

<pre><code>cat FILENAME_a* > FILENAME</code></pre>


*Clear DNS Cache:*

<pre><code>sudo dscacheutil -flushcache</code></pre>


*GitHub SSH Key:*

<pre><code>cd ~/.ssh/
ssh-keygen -t rsa -C "you@example.com"
pbcopy < ~/.ssh/id_rsa.pub
# Add Key on GitHub Account > SSH Keys and paste code in that is in clipboard.
ssh -T git@github.com</code></pre>


*Symlink*

<pre><code>cd /folder/where/link/goes/
link -s /real/folder/</code></pre>


*Encrypt and Decrypt a file with OpenSSL:*

Coming soon.
