from corpus_to_csv import corpus_to_csv

with open('corpora/article.txt', 'r', encoding='utf-8') as file:
    text = file.read()

corpus_to_csv(text, 'data/article_entities.csv')