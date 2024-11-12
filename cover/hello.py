import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 3 * np.pi, 400)
y = np.sin(x)

print("Done 1")
fig, ax = plt.subplots()
ax.plot(x, y)
plt.savefig("cover.png")

print("Done 2")