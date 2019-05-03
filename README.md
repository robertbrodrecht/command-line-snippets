Helpful Command Line Snippets
=============================

*Show hidden files in Finder*
Not a command line thing but I need this somewhere: shift+command+.

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

*Check Status of All Git Repos in Folder:*
<pre><code>
find . -name .git -type d -exec sh -c '(echo {} && cd {} && cd .. && git status -s && echo)' \;
</code></pre>

*Symlink*

<pre><code>cd /folder/where/link/goes/
link -s /real/folder/</code></pre>

*Scrape a Website*
<pre><code>wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains yourdomain.com --no-parent http://yourdomain.com</code></pre>

*Resource Forks*

<pre><code>cat Your-File/..namedfork/rsrc > Your-File-Fork</code></pre>

*Make SSH Easier*
<pre><code>
ssh-copy-id user@host.local
nano ~/.ssh/config
</code></pre>

Add the following:
```
Host nicename
	HostName host.local
	User user
	IdentityFile ~/.ssh/id_rsa
```

*Encrypt and Decrypt a file with OpenSSL:*

Coming soon.
