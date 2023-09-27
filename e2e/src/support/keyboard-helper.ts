import { Page } from 'playwright'
import { ElementLocator } from '../env/global'


export const pressEnter = async (
    page: Page,
    elementIdentifier: ElementLocator,
) => {
    await page.locator(elementIdentifier).press('Enter');

}
