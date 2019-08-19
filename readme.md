# Github Follow

* Ruby script to follow people which follows the most active users on github.
* OBS: Make sure you are careful when using this it will be apparent that you are being spammy so use at your own risk.


```
                /|         ,
              ,///        /|
             // //     ,///
            // //     // //
           // //     || ||
           || ||    // //
           || ||   // //
           || ||  // //
           || || || ||
           \\,\|,|\_//
            \\)\)\\|/
            )-."" .-(
           //^\` `/^\\
          //  |   |  \\
        ,/_| 0| _ | 0|_\,
      /`    `"=.v.="`    `\
     /`    _."{_,_}"._    `\
     `/`  ` \  |||  / `  `\`
      `",_  \\=^~^=//  _,"`
          "=,\'-=-'/,="
              '---'

I do not use it, ok, only for study purposes :).
```

### Prerequisites

```
selenium-webdriver >= 2.53.0
ruby >= 1.9.2
rubygems >= 1.3.1
driver selenium
```

### Installing

* Check your Ruby version

```shell
ruby -v
```

If you dont have it, install using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install version
```

* Install selenium-webdriver

```shell
gem install selenium-webdriver -v 2.53.0
```

* Driver selenium

Install and setup [chrome driver](https://chromedriver.chromium.org/downloads) according to your google chrome version and your OS.

### Setting up and running the script.

Open the ruby script in a text editor then modify these variables inserting your github credentials.

```
username_input and password_input
```

Then run the script typing.

```shell
ruby follow_users.rb
```

### License

Copyright © 2019, [Davi Guimarães](https://github.com/davigl).
