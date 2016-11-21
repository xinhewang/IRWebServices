from nltk.tag import pos_tag

class NLTKParser():
    def NoneParser(sentence):
        tagged_sent = pos_tag(sentence.split())
        propernouns = [word for word,pos in tagged_sent if pos == 'NNP']
        return propernouns


