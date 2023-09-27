import { Then } from "@cucumber/cucumber"
import { ScenarioWorld } from "./setup/world"
//import { 
//    waitFor, 
//    waitForResult, 
//    waitForSelector 
//} from "../support/wait-for-behavior"
//import { getElementLocator } from "../support/web-element-helper"
import { ElementKey } from "../env/global"
//import { pressEnter } from "../support/keyboard-helper"
import { logger } from "../logger"

// Next: Add elementKey and enable all needed inputs


Then (
    /^I press Enter$/,
    async function(this: ScenarioWorld) {
        const {
            screen: {page},
            globalConfig,
        } = this;

        logger.log(`I press Enter`)


    }
)
