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

intents = json.loads(open('intents.json').read())

words = [""]
classes = [""]
documents = [""]
ignore_letters = ["?", "!", ".", ",", ";", "'"]

for intents in intents['intents']:
    for pattern in intents['pattern']:
        word_list = nltk.word_tokenize(pattern)
        words.append(word_list)
        documents.append((word_list , intents['tag']))
        if intents['tag'] not in classes:
            classes.append(intents['tag'])

            print(documents)
