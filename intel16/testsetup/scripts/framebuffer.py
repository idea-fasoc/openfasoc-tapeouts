from PIL import Image, ImageDraw, ImageFont

def text_to_framebuffer(text, width, height, font_size=12):
    # Create a new image with a black background (1-bit mode)
    image = Image.new("1", (width, height), 0)  # "1" indicates 1-bit mode, 0 for black background

    # Get a drawing context
    draw = ImageDraw.Draw(image)

    # Choose a font with a specific size
    font = ImageFont.truetype("font/SF Collegiate.ttf", font_size)

    # Draw text on the image
    text_position = (0, 0)
    draw.text(text_position, text, font=font, fill=1)  # Using 1 for white text color

    # Convert the image to a byte array
    byte_array = image.tobytes()
    return byte_array

def figure_to_framebuffer(figure_path, width, height, figure_width, figure_height):
    # Create a new image with a black background (1-bit mode)
    image = Image.new("1", (width, height), 0)  # "1" indicates 1-bit mode, 0 for black background

    # Get a drawing context
    draw = ImageDraw.Draw(image)

    # Load the figure
    figure = Image.open(figure_path)

    # Resize the figure to a new width and height
    figure = figure.resize((figure_width, figure_height))

    # Calculate the position to center the figure on the background
    position = ((width - figure.width) // 2, (height - figure.height) // 2)

    # Paste the figure onto the image
    image.paste(figure, position)

    # Convert the image to a byte array
    byte_array = image.tobytes()
    return byte_array

def all_to_framebuffer(edge):
    image = Image.new("1", (1024 ,64), 0)
    draw = ImageDraw.Draw(image)
    figure1 = Image.open("fig/umich.png")

    if edge == 0:
        font = ImageFont.truetype("font/SF Collegiate Solid Bold.ttf", 80)
        figure1 = figure1.resize((48, 24))
        position1 = (970, 40)

    else:
        font = ImageFont.truetype("font/SF Collegiate.ttf", 60)
        figure1 = figure1.resize((32, 16))
        position1 = (760, (64 - figure1.height) // 4 * 3)

    image.paste(figure1, position1)
    draw.text((420, 10), "O P E N F A S O C", font=font, fill=1)
    figure2 = Image.open("fig/opentitan.png")
    figure2 = figure2.resize((384, 64))
    position2 = ((1024 - figure2.width) // 40, (64 - figure2.height) // 2)
    image.paste(figure2, position2)

    byte_array = image.tobytes()
    return byte_array