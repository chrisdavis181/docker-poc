import pytest
from seleniumbase import BaseCase
from percy import percy_snapshot

class GoogleSearch(BaseCase):
    def test_navigate_to_google_search_engine(self):
        driver = self
        driver.get('https://google.com')
        percy_snapshot(self.driver, 'Google home page')
