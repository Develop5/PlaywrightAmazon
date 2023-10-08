## (PlaywrightAmazon) Should be renamed to: &nbsp;
# PlaywrightZalando 
### for website

### for API: 
https://jsonplaceholder.typicode.com/

&nbsp;
### Another option for API: 
https://retool.com/api-generator/

    Endpoint:
    https://retoolapi.dev/OmoYKT/data

#### I know how to generate data in this last one, but not how to work with them, yet


[Playwright over Selenium or Cypress](https://medium.com/tech-p7s1/why-favor-playwright-over-selenium-or-cypress-e96df84c08e1)

&nbsp;

## Goal

Actually, checking Zalando website
🥴

## Steps to prepare the project

1. yarn install  
(from terminal)

2. Create an e2e folder. Get into it and:
npm init -y
(will create package.json)  

3. npx -p typescript tsc --init  
(will create tsconfig.json file)

4. yarn add playwright -D  
This installs playwright with packages in your devDependencies ("-D")

5. yarn add @playwright/test -D  
Contains all assertion libraries

6. yarn add @cucumber/cucumber -D

7. yarn add typescript -D

8. yarn add ts-node -D

9. Babel:

    npm install @babel/core
    npm install @babel/cli
    npm install @babel/preset-env
    npm install @babel/preset-typescript

11. yarn add dotenv -D

12. yarn add cucumber-html-reporter

13. yarn add faker -D

14. Accessibility (still from e2e):
        yarn add axe-playwright -D
        yarn add axe-html-reporter -D


Until here, the first commit
------------------------------------

Create needed folders, inside E2E &ensp;&ensp;&ensp; 🏛️

1. config
    |-> json_payloads
        |-> multiple_users.json
        |-> no_users.json
        |-> single_user.json
        |-> six_users.json
    |-> mappings
        |-> common.json
        |-> create_contact.json
        |-> home.json
        |-> playground.json
    |-> emails.json
    |-> errors.json
    |-> hosts.json
    |-> mocks.json
    |-> pages.json

2. dist                     (No hace falta meter nada aquí dentro, porque los fuentes son ficheros .ts en el oro src)

3. env
    |-> common.env
    |-> localhost.env
    |-> production.env

4. reports          (Only folders are needed)
                    (No need to be filled up, as these are results of tests)
    |-> accessibility
        |-> create contact accessibility_report.html
        |-> create contact accessibility_report.html
        |-> home accessibility_report.html
        |-> playground accessibility_report.html
    |-> screenshots
        |-> After_4654.png
        |-> As a user I can interact and assert on checkboxes.png
    |-> videos
        |-> As a uer I can interact and assert on new windows
            |-> 04fe5c490af004ed5bfd2d417f40138d.webm

    |-> cucumber-html-report.html
    |-> report.json

5. src
    |-> run_tests.bat
    |-> run_tests.sh
    |-> env
        |-> global.ts
        |-> parseEnv.ts
    |-> logger
        |-> index.ts
    |-> reporter
        |-> cucumber-report.ts
    |-> step-definitions        
        |-> assertions          (maybe more are needed)
            |-> verify-element-value.ts
            |-> verify-element-visibility.ts
            |-> verify-table-value.ts
        |-> setup
            |-> hooks.ts
            |-> world.ts

        (maybe more .ts files are needed at this level)
        |-> accessibility.ts
        |-> check.ts
        |-> click.ts
        |-> general.ts
        |-> navigation.ts
        |-> page.ts
        |-> scroll.ts

    |-> support
        |-> browser-behaviour.ts
        |-> error-helper.ts
        |-> html-behavior.ts
        |-> input-helper.ts
        |-> mock-behavior.ts
        |-> navigation-behavior.ts
        |-> options-helper.ts
        |-> random-data-helper.ts
        |-> tag-helper.ts
        |-> wait-for-behavior.ts
        |-> web-element-helper.ts

    |-> index.ts


6. allpush.sh


## Project editor
To warrant that cucumber points at step-definitions  &ensp;   &ensp;🛣️
&ensp;

Settings (left down icon) And then open settings.json (right upper icon)  

{
    "cucumberautocomplete.steps": ["./e2e/src/step-definition/**/*.ts"],
    "cucumberautocomplete.syncfeatures": "test/features/*.feature"
}

### How to pause tests
        await page.pause()

## Resources &ensp; 🧰

    Duplicate line:     Shift + Alt + Arrow down (Arrow up)

    Print URL:          console.log('>>>>>>> Page URL: ' + page.url())

    Locators in array:      $('[class="big-number chapter"]')[0]

    Pretty print JSON:      console.log(JSON.stringify(object, null, 2))

    Dynamite print:      console.log(`🧨  >>>>>>>>>>> Lourdes, nameOfKey   ${key}  🧨 `)


    Add emojis:         Windows + .

    In VS Code Integrated Terminal, type command: chcp 65001

    In settings > Terminal, I had this Terminal › External: Windows Exec
Customizes which terminal to run on Windows.
    C:\WINDOWS\System32\cmd.exe

    Now changed to:
    C:\Program Files\Git\git-bash.exe



Looks like this runs here or it is only for the e2e testing (not API)
    npm run cucumber -- --profile dev       


### Get a list of elements in the page
```
var tags = document.getElementsByTagName("div");
for (var i=0, max=tags.length; i < max; i++) {
   console.log(tags[i]);
}
```

### How to get the full page in text or elements
```
For the full html of the page, this is what you need: const html = await page.content()

To get the inner text of the div, this should work: const pageText = await page.innerText('div')
```

### Highlighting elements (in the devtools console), not by code

```
document.querySelector('header').style.border = '2em solid green'

Example:
document.querySelector('[class$="Zhr-fS _9l1hln _65i7kZ"]').style.border = '2em solid green'
```

### Note on headless mode


[Playwright works in headful mode but fails in headless](https://stackoverflow.com/questions/75488727/playwright-works-in-headful-mode-but-fails-in-headless)


------------------------------------

## Execute tests:

Tests can be executed through this command from e2e folder: 
    ./run_tests.sh localhost dev       (or production, and regression or smoke)          
            or
    ./run_tests.bat localhost dev             
Depending whether you are in Linux or Windows. (Both work for me)


## Some issues that come up when running
"babel-node" no se reconoce como un comando interno o externo 
    npm install -g babel-cli

Then, 
Couldn't find preset "@babel/preset-typescript"
    yarn run test


-----------------------------------------
-----------------------------------------


## API &ensp; &ensp; 😅


# All steps need to be reviewed

Create a new folder under the main and name it api_e2e

Then, go to this folder and:
```
    npm init -y
```

Then,

    npx -p typescript tsc --init

And yes to all      (No question popped up in my case)
This creates the tsconfig.json file


Install playwright

    npm install playwright


Now,

    yarn add @playwright/test

And then create the "src/tests" folder in the main /api_e2e
Create the folder "config" under api_e2e and add here a file hosts.json with the localhost and production urls.


We are NOT going to use Cucumber for the API suite,therefore we will use tsconfig.json
And we will use the playwright native html reporter instead of cucumber-html-reporter

Create your tests as .ts files under the src/tests folder
For example GET.test.ts

Every time there is a problem with process.env in index.ts (Cannot find name 'process')
    yarn add -D @types/node                 (It can be removed later)

Create a file playwright.config.js under api_e2e
This file contains the baseUrl and headers for API testing


You can execute your tests by typing in the command line from api_e2e folder:  
    npx playwright test

    Or:
    yarn run test

    Which similar to:
    "test": "npx playwright test --reporter=html"


Then, to execute the tests:

    yarn run test

And then, to see the report:

    yarn playwright show-report

-----


### API tests with Cucumber ###

## Be careful. Once you configure for Cucumber, tne normal yarn test will not work anymore

Till now we have not used cucumber for API. If you plan to do that, follow these steps.

In the api_e2e folder execute:

    npm install @cucumber/cucumber          (see what happens in package.json)

Next install typescript:

    npm install typescript

If you have not done it by now, you need to create the tsconfig.json (npx -p typescript tsc --init). In this project particularly it was done before.


ts-node is a very popular package in Typescript world. It allows us to run a test and get results without having to worry about file changes and compilation.

    npm install ts-node

Once this module is installed, we can add scripts in package.json (cucumber, in this case)
    
This script indicates where are our features. The ts-node/register inside this script enables us to execute typescript code. Typescript is always compiled to JavaScript on runtime.
This script also indicates where are the step-definitions.




Then, we need to have test results segregated, independently of whether we run 1 or more tests at a time, in parallel.
Cucumber World provides us an isolated context per scenario, exposed to the hooks and steps as this. Enabling you to set and recall some states across the lifecycle of your scenario.
Cucumber world class is accessible via "this" in scenario before, after, when, given and then steps.
It is used to store scenario configuration and current browser. 
Cucumber world enables us to set global configuration for each scenario, meaning all our cucumber scenarios run independently and retain any configuration or variables set before or throughout.
That is why with this, we can execute scenarios in parallel.



#### ESLint ####

From our folder api_e2e:

    npm install eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin

Now create files 

    .eslintrc               
    .eslintignore           
And add the corresponding script in package.json, for lint to be executed

Later, when it needs to be executed, to check the code:
    npm run lint
This can be launched from the command line, from time to time as well, to ensure the code is still clean.

Create cucumber.js      (I have copied the cucumber.js file from the e2e folder to here)     
Update package.json     (Copy the script block from another api_e2e project, to here)
and install babel

    npm install @babel/core
    npm install @babel/cli
    npm install @babel/preset-env
    npm install @babel/preset-typescript

Create index.ts in the src folder
&nbsp;

#### Cucumber reporter ####

Create a folder reporter in scr and add file cucumber-report.ts (Copy the file from any other cucumber project)

from api_e2e folder, run:

    npm install cucumber-html-reporter
    yarn add cucumber-html-reporter

--------------

And now, the test is executed a little differently

    yarn cucumber --tags @tagname       (For example: yarn cucumber --tags @dev)


### WIP. I am here. &ensp; &ensp;  💦
WIP 💃💃💃💃💃💃💃💃💃💃💃💃  I am here  (Before any commands to run tests) 



#### Again, environment variable management ####

In the api_e2e folder:

    npm install dotenv

common.env needs to be created          (I have copied it from the e2e folder)

Create files:                           (By now, copied from the e2e folder)

    run_tests.sh        (And provide permission: chmod +x ./run_tests.sh) for Linux, Mac
    run_tests.bat       For Windows

And now tests can be executed through this command: 
    ./run_tests.sh dev          
            or
    ./run_tests.bat dev         
Depending whether you are in Linux or Windows. (Both work for me)

Must be executed from those scripts because only there the COMMON_CONFIG_FILE varible is set






Review this section because I do not know where it should go:

Now, we can execute in our api_e2e folder:

    npm run cucumber



...
I do not know where this section will go, yet

Then, to execute the tests:

    yarn run test

-----