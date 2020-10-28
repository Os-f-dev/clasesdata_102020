from selenium import webdriver
from selenium.webdriver.firefox.firefox_binary import FirefoxBinary
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.common.action_chains import ActionChains
import time


#Se configura driver para poder manejar mejor el navegador
caps = DesiredCapabilities().FIREFOX
caps["marionette"] = True
driver = webdriver.Firefox(capabilities=caps)

#Se carga la pagina y se ubica el chart para que sea visible en el navegador
driver.get('https://www.transfermarkt.es/jadon-sancho/marktwertverlauf/spieler/401173')
last_height = driver.execute_script("return document.body.scrollHeight")
driver.execute_script("window.scrollTo(0, 650);")
time.sleep(3)

#Se ubican las banderas dentro del chart
chart = driver.find_element_by_css_selector('.highcharts-markers')
images_found = chart.find_elements_by_tag_name('image')
wrap_info = driver.find_element_by_css_selector('div.highcharts-tooltip')

#Finalmente se ordenara que el cursor pase por cada una de las banderas para ver el tooltip
#de cada una
actions = ActionChains(driver)
info = []
for i in range(len(images_found)):
    #Moviendo cursor..
    actions.move_to_element(images_found[i])
    actions.perform()
    print("Recogiendo info....")
    print(images_found[i].text)
    info.append([i.text for i in wrap_info.find_elements_by_tag_name('b')])
