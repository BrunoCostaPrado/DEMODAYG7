import random
import json
import pickle
import numpy as np
import nltk
from nltk.stem import WordNetLemmatizer
import tensorflow

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Activation, Dropout
from tensorflow.keras.optimizers import SGD

lemmatizer = WordNetLemmatizer
intents = json.load(open('intents.json').read())
words = ["o"]
clases = ["o"]
documents = ["o"]
ignore_letters = ["?", "!", ".", ",", ";", "'"]

for intents in intents['intents']:
    for pattern in intent['pattern']:
        word_list = nltk.tokenize(pattern)
