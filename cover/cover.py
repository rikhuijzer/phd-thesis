import matplotlib.pyplot as plt
import numpy as np

height = 244
height_inches = height / 25.4
width = 170 + 6.52 + 170 + 5 + 60
width_inches = width / 25.4
figsize = (width_inches, height_inches)
dpi = 400
fig = plt.figure(figsize=figsize, dpi=dpi)
# Span the entire figure.
ax = fig.add_axes([0, 0, 1, 1])
ax.set_axis_off()
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

seed = 25
np.random.seed(seed)

def primary():
    color = int(np.random.uniform(150, 255))
    color = f"#{color:02x}{10:02x}{10:02x}"
    return color

def secondary():
    color = int(np.random.uniform(100, 255))
    color = f"#{color:02x}{color:02x}{color:02x}"
    return color

def random_color():
    group = np.random.randint(0, 4)
    if group < 3:
        return secondary()
    else:
        return primary()

for i in range(70):
    size = np.random.uniform(0.4, 1.2)
    pos = np.random.uniform([0, 0], [10, 10], 2)

    hex_vertices = []
    for angle in range(6):
        x = pos[0] + size * np.cos(angle * np.pi / 3)
        y = pos[1] + size * np.sin(angle * np.pi / 3)
        hex_vertices.append((x, y))
    color = random_color()
    alpha = np.random.uniform(0.05, 0.5)
    ax.add_patch(plt.Polygon(hex_vertices, fill=True, color=color, alpha=alpha, antialiased=True))
    border_color = primary()
    border_alpha = min(alpha + 0.2, 1.0)
    ax.add_patch(plt.Polygon(hex_vertices, fill=False, edgecolor=border_color, alpha=border_alpha, linewidth=1, antialiased=True))

plt.savefig("cover.svg", transparent=True)
