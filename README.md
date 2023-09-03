# PlaywrightAmazon

## 1st Scenario
    
Check the product is sold by Amazon

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

9. yarn add @babel/cli -D

10. yarn add @babel/preset-env -D

11. yarn add dotenv -D

12. yarn add cucumber-html-reporter


Until here, the first commit
------------------------------------

Create needed folders, inside E2E

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

2. dist
    |-> env
        |-> global.js
        |-> parseEnv.js
    |-> logger
        |-> index.js
    |-> reporter
        |-> cucumber-report.js
    |-> step-definitions        
        |-> assertions          (maybe more are needed)
            |-> verify-element-value.js
            |-> verify-element-visibility.js
            |-> verify-table-value.js
        |-> setup
            |-> hooks.js
            |-> world.js

        (maybe more .js files are needed at this level)
        |-> accessibility.js
        |-> check.js
        |-> click.js
        |-> general.js
        |-> navigation.js
        |-> page.js
        |-> scroll.js

    |-> support
        |-> browser-behaviour.js
        |-> error-helper.js
        |-> html-behavior.js
        |-> input-helper.js
        |-> mock-behavior.js
        |-> navigation-behavior.js
        |-> options-helper.js
        |-> random-data-helper.js
        |-> tag-helper.js
        |-> wait-for-behavior.js
        |-> web-element-helper.js

    |-> index.js

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

6. allpush.sh


## Project editor
Settings (left down icon) And then open settings.json (right upper icon)  

{
    "cucumberautocomplete.steps": ["./e2e/src/step-definition/**/*.ts"],
    "cucumberautocomplete.syncfeatures": "test/features/*.feature"
}