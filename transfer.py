from selenium import webdriver
from selenium.webdriver.firefox.firefox_binary import FirefoxBinary
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.common.action_chains import ActionChains
import time

caps = DesiredCapabilities().FIREFOX
caps["marionette"] = True
driver = webdriver.Firefox(capabilities = caps)

driver.get('https://www.transfermarkt.es/jadon-sancho/marktwertverlauf/spieler/401173')
last_height = driver.execute_script("return document.body.scrollHeight")
driver.execute_script("window.scrollTo(0,650);")
time.sleep(3)

chart = driver.find_element_by_css_selector('#highcharts-0')
images_found = chart.find_elements_by_tag_name('image')
wrap_info = driver.find_element_css_selector('div.hightchars-tooltip')

actions = ActionsChains(driver)
info = []

for i in range(len(images_found)):
    actions.move_to_element(images_found[i])
    actions.perform()
    print('Recogiendo info...')
    info.append([i.text for i in wrap_info.find_elements_by_tag_name('b')])
