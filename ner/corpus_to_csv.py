import spacy as sc
from spacy.lang.en.examples import sentences
import pandas as pd

def corpus_to_csv(text, csv_name):
    nlp = sc.load("en_core_web_sm")
    doc = nlp(text)
    entities = pd.DataFrame()
    ents = []
    labels = []

    for ent in doc.ents:
        ents.append(ent.text)
        labels.append(ent.label_)
        
    entities['entity'] = ents
    entities['label'] = labels
    entities['freq'] = entities.groupby('entity')['entity'].transform('count')
    entities = entities.drop_duplicates(subset=['entity'])

    entities.to_csv(csv_name)

    print(f'CSV exported to {csv_name}')