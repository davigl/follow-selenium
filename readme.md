# <div align="center"> Github Follow via Selenium </div>

* Ruby script to follow people which follows the most active users on github;
* OBS: Make sure you are careful when using this it will be apparent that you are being spammy so use at your own risk;
* If you're getting stuck during authentication, you've to manually get and insert authenticate code;
* If you like it make sure to give star, thank you!

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

#### Check your Ruby version

```shell
ruby -v
```

If you dont have it, install using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install version
```

#### Install selenium-webdriver

```shell
gem install selenium-webdriver -v 2.53.0
```

#### Driver selenium

Install and setup [chrome driver](https://chromedriver.chromium.org/downloads) according to your google chrome version and your OS.

### Running the script.

Run the script typing and inserting the args correctly.

```shell
ruby follow.rb your_github_username your_github_password
```

for example: 

```shell
ruby follow.rb test123 test1234
```

Where test123 is the username and test1234 the password.

### License

Copyright © 2019, [Davi Guimarães](https://github.com/davigl).
