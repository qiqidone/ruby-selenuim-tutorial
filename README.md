# ruby-selenuim

Install:
`gem install selenium-webdriver`
`gem install phantomjs`

Also, need executable file installed: 
`http://phantomjs.org/download.html`

In linux 64:
(I installed it with apt-get install, then remove it, because the version is out of time, so there leaves dependency libs for me)
`wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2`
`tar xvfj phantomjs-2.1.1-linux-x86_64.tar.bz2 `
`sudo mv phantomjs-2.1.1-linux-x86_64 /usr/local/share/`
`sudo ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs `
`phantomjs -v`


More document:
`http://www.seleniumhq.org/docs/03_webdriver.jsp`