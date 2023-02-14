import matplotlib.pyplot as plt
import numpy as np

x = np.arange(0, 10)
AdamTrain = np.array(
    [1.9058741, 0.6294938, 0.5859674, 0.5458205, 0.5207010, 0.5189769, 0.5049296, 0.5015386, 0.4966886, 0.4934722],
    dtype=np.float64)
AdamVal = np.array(
    [0.6397978, 0.4758975, 0.4630869, 0.3916426, 0.4007978, 0.3818459, 0.3920867, 0.3685307, 0.3699738, 0.3701287],
    dtype=np.float64)
GCTrain = x ** 3
GCVal = x ** 3

fig, ax = plt.subplots()
ax.plot(x, AdamTrain, label='AdamTrain')
ax.plot(x, AdamVal, label='AdamVal')
ax.legend()

plt.show()
