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
Settings (left down icon) And then open settings.json (right upper icon)  

{
    "cucumberautocomplete.steps": ["./e2e/src/step-definition/**/*.ts"],
    "cucumberautocomplete.syncfeatures": "test/features/*.feature"
}

------------------------------------

## Execute tests:

And now tests can be executed through this command: 
    ./run_tests.sh localhost dev       (or production and regression or smoke)          
            or
    ./run_tests.bat localhost dev             
Depending whether you are in Linux or Windows. (Both work for me)


## Some issues that come up when running
"babel-node" no se reconoce como un comando interno o externo 
    npm install -g babel-cli

Then, 
Couldn't find preset "@babel/preset-typescript"
    yarn run test

