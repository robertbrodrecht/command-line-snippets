Helpful Command Line Snippets
=============================

*Open App As Root:*

<pre><code>sudo -b "/Applications/TextWrangler.app/Contents/MacOS/TextWrangler"</code></pre>

*The .zip .cpzip Loop*

<pre><code>ditto -x -k yourzip.zip yourfolder</code></pre>

*GZip A Folder:*

<pre><code>tar czf GZIPNAME.tgz FOLDERNAME</code></pre>

<pre><code>ditto -c -z FOLDERNAME GZIPNAME.tgz</code></pre>


*Split a file into chunks:*

<pre><code>split -b 500m FILENAME FILENAME_</code></pre>


*Restore split file:*

<pre><code>cat FILENAME_a* &gt; FILENAME</code></pre>


*Clear DNS Cache:*

<pre><code>sudo dscacheutil -flushcache</code></pre>


*GitHub SSH Key:*

<pre><code>cd ~/.ssh/
ssh-keygen -t rsa -C "you@example.com"
pbcopy &lt; ~/.ssh/id_rsa.pub
# Add Key on GitHub Account &gt; SSH Keys and paste code in that is in clipboard.
ssh -T git@github.com</code></pre>


*Symlink*

<pre><code>cd /folder/where/link/goes/
link -s /real/folder/</code></pre>

*Scrape a Website*
<pre><code>wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains yourdomain.com --no-parent http://yourdomain.com</code></pre>


*Encrypt and Decrypt a file with OpenSSL:*

Coming soon.
