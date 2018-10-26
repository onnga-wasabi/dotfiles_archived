from sklearn.feature_extraction.text import TfidfVectorizer


def get_tfidfer(paths, max_df=0.5, min_df=1, max_features=5000):
    converter = TfidfVectorizer(input='filename', max_df=max_df, min_df=min_df, max_features=max_features)
    return converter.fit(paths)
