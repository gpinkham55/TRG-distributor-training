# Draws public/img/modules/distributor-business-6.png (order sourcing diagram).
# Run from the repo root:  python images/diagram-sources/distributor-business-6.py
from PIL import Image, ImageDraw, ImageFont

S = 3                      # supersample factor for smooth edges
W, H = 1600, 610
LINE, TEXT, SUB = (107, 107, 107), (61, 61, 61), (110, 110, 110)
GREEN, GREEN_FILL = (51, 160, 74), (226, 239, 227)
REG, BOLD = "C:/Windows/Fonts/arial.ttf", "C:/Windows/Fonts/arialbd.ttf"

im = Image.new("RGB", (W * S, H * S), "white")
d = ImageDraw.Draw(im)
font = lambda path, px: ImageFont.truetype(path, px * S)
P = lambda *v: [x * S for x in v]


def box(x0, y0, x1, y1, label, bold=False, green=False):
    d.rounded_rectangle(P(x0, y0, x1, y1), radius=14 * S,
                        fill=GREEN_FILL if green else "white",
                        outline=GREEN if green else LINE, width=(4 if green else 2) * S)
    d.text(P((x0 + x1) / 2, (y0 + y1) / 2), label, fill=TEXT, anchor="mm",
           font=font(BOLD if bold else REG, 27))


def line(*pts):
    d.line(P(*pts), fill=LINE, width=2 * S, joint="curve")


def arrow(x, y, direction):
    a = 8
    tri = {"right": [(x, y), (x - 15, y - a), (x - 15, y + a)],
           "up": [(x, y), (x - a, y + 15), (x + a, y + 15)]}[direction]
    d.polygon([c * S for p in tri for c in p], fill=LINE)


d.text(P(50, 52), "Every order ends in an invoice, no matter where the product comes from",
       fill=TEXT, anchor="lm", font=font(BOLD, 31))

rows = [(168, "Stock: pick from the shelf"), (273, "Shop: build the assembly"),
        (379, "S: special order, received")]
DIRECT = 505
MID = 273

box(50, MID - 42, 337, MID + 43, "Order saved", bold=True)
line(337, MID, 379, MID)
line(379, rows[0][0], 379, DIRECT)                 # trunk out of the order
for y, label in rows:
    line(379, y, 418, y); arrow(418, y, "right")
    box(425, y - 42, 838, y + 43, label)
    line(838, y, 885, y)
line(885, rows[0][0], 885, rows[-1][0])            # merge of the branch paths
line(885, MID, 930, MID); arrow(934, MID, "right")
box(937, MID - 42, 1253, MID + 43, "Stage and deliver")
line(1253, MID, 1308, MID); arrow(1312, MID, "right")
box(1315, MID - 42, 1548, MID + 43, "Invoice", bold=True, green=True)

line(379, DIRECT, 418, DIRECT); arrow(418, DIRECT, "right")
box(425, DIRECT - 42, 838, DIRECT + 43, "D: vendor ships direct")
line(838, DIRECT, 1431, DIRECT, 1431, MID + 62); arrow(1431, MID + 47, "up")
d.text(P(1137, DIRECT - 24), "skips the branch dock", fill=SUB, anchor="mm", font=font(REG, 24))

im.resize((W, H), Image.LANCZOS).save("public/img/modules/distributor-business-6.png", optimize=True)
print("saved")
