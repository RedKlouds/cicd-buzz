import unittest
import requests

def test_homepage():
	r = requests.get("http://localhost:5000/")
	assert r.status == 200
	
