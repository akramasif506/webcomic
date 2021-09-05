import sys
import webbrowser

if __name__ == "__main__":
    pg = input("Pleas Enter Comic Number ")
    base_url = "https://xkcd.com/" + str(pg) + "/"
    webbrowser.open(base_url,2)
