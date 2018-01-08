import unittest


from buzz import generator

def test_sample_single_word():
	l = ('foo','bar','foobar')
	word = generator.sample(l)
	assert word in l

def test_sample_multiple_words():
	l = ('food','bar','foodbar')
	words = generator.sample(l,2)
	assert len(words) == 2
	assert words[0] in l
	assert words[1] in l
	assert words[0] is not words[1]
def test_generate_buzz_of_at_least_five_words():
	pharse = generator.generate_buzz()
	assert len(pharse.split()) >= 5
