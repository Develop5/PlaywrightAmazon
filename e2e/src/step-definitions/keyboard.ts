import { Then } from "@cucumber/cucumber"
import { ScenarioWorld } from "./setup/world"
import { 
    waitFor, 
    waitForResult, 
    waitForSelector 
} from "../support/wait-for-behavior"
import { getElementLocator } from "../support/web-element-helper"
import { ElementKey } from "../env/global"
import { pressEnter } from "../support/keyboard-helper"
import { logger } from "../logger"


Then (
    /^I press Enter on "([^"]*)" element$/,
    async function(this: ScenarioWorld, elementKey: ElementKey) {
        const {
            screen: {page},
            globalConfig,
        } = this;

        logger.log(`I press Enter on ${elementKey} button|link|icon|element`)
        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)

        await waitFor( async() => {

            const elementStable = await waitForSelector(page, elementIdentifier)

            if (elementStable) {
                await pressEnter(page, elementIdentifier)
                return waitForResult.PASS
            }
            return waitForResult.ELEMENT_NOT_AVAILABLE;
        },
        globalConfig,
        { target: elementKey })


    }
)
