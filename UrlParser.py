# coding: utf-8

from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.by import By

from BoxScoreParser import BoxScoreParser
import datetime
import numpy  as np
import pandas as pd
import random as rd
import time
import urllib2
import sys

class UrlParser:
#     초기화때 날짜를 입력(박스스코어 확인 날짜)
    def __init__(self,date):
#         박스스코어의 url을 담는 리스트
        self.urlList=list()
        
        today=datetime.date.today()
        date=str(date)
        yy=int(date[:4])
        mm=int(date[4:6])
        dd=int(date[6:])
        date=datetime.date(yy,mm,dd)
        backCount=(today-date).days
#         print 'back 횟수 : ',backCount

            # 크롬창 
        browser = webdriver.Chrome(executable_path='/home/gohyunyoung98/Documents/Github/kbo_parsing/chromedriver')
        # 접속
        browser.get('http://www.koreabaseball.com/Schedule/ScoreBoard/ScoreBoard.aspx')

        # backCount일 전의 경기들의 BoxScore 갯수 btnList에 저장
        for i in range(backCount):
        #     이전일 버튼
            browser.find_element_by_id('cphContainer_cphContents_btnPreDate').click()
            time.sleep(1)
        time.sleep(1)
        btnList = browser.find_elements_by_css_selector('a[href^="/Schedule/Game/BoxScore.aspx?"]')

        for i in range(len(btnList)):
        #     박스스코어 버튼
            browser.find_elements_by_css_selector('a[href^="/Schedule/Game/BoxScore.aspx?"]')[i].click()
            self.urlList.append(browser.current_url)
            time.sleep(1)

            browser.get('http://www.koreabaseball.com/Schedule/ScoreBoard/ScoreBoard.aspx')
            for i in range(backCount):
        #         이전일 버튼
                browser.find_element_by_id('cphContainer_cphContents_btnPreDate').click()
                time.sleep(1)

