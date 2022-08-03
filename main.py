from wand.image import Image
from wand.display import display

with Image(filename='./images/original.heic') as original:
    with original.convert('jpeg') as converted:
        converted.save(filename='./images/converted.jpg')
