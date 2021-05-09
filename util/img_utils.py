def imgGen(src):
    return '<img src="{}"></img>'.format(src)

def hrefImgGen(src, href, title):
    return '<a href="{}" title="{}">{}</a>'.format(href, title, imgGen(src))

# Constants
lmPointR = imgGen("https://cdn.lihkg.com/assets/faces/lm2/point1.gif")
lmPointL = imgGen("https://cdn.lihkg.com/assets/faces/lm2/point2.gif")

imgPigWail = imgGen("https://cdn.lihkg.com/assets/faces/pig/wail.gif")
imgPig = imgGen("https://cdn.lihkg.com/assets/faces/pig/sowhat.gif")

imgMouseWave = imgGen("https://cdn.lihkg.com/assets/faces/mouse/bye.gif")

imgMouseCB = hrefImgGen(
    "https://cdn.lihkg.com/assets/faces/mouse/bye.gif", 
    "https://www.youtube.com/watch?v=dQw4w9WgXcQ", 
    "View source code"
)