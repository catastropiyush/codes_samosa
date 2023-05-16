import matplotlib.pyplot as plt
def rydberg_nm(n1, n2):
    rh = 109677  # cm^-1, Rydberg constant 
    t1 = 1 / n1 ** 2
    t2 = 1 / n2 ** 2
    wavenumber = rh * (t1 - t2)
    return 1 / wavenumber * 1e7
lyman_n2s = range (2, 12)
lyman = [rydberg_nm(1, n2) for n2 in lyman_n2s]
for nm, n2 in zip(lyman, lyman_n2s):
    print(f'n1=1, n2={n2}, nm={nm}')
fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(12, 2))
ax.set_title('Lyman Series', color='b', size=20)
ax.set_yticks([])
ax.set_xlim(90, 130)
ax.set_xlabel("nm", size=20, color='b')
for nm in lyman:
    ax.axvline(nm, color='r')
balmer_n2s = range(3, 10)
balmer = [rydberg_nm(2, n2) for n2 in balmer_n2s]
for nm, n2 in zip(balmer, balmer_n2s):
    print(f'n1=2, n2={n2}, nm={nm}')
fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(12, 2))
ax.set_title('Balmer Series', color='b', size=20)
ax.set_yticks([])
ax.set_xlim(350, 700)
ax.set_xlabel("nm", size=20, color='b')
for nm in balmer:
    ax.axvline(nm, color='r')
paschen_n2s = range(4, 9)
paschen = [rydberg_nm(3, n2) for n2 in paschen_n2s]
for nm, n2 in zip(paschen, paschen_n2s):
    print(f'n1=2, n2={n2} nm={nm}')
fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(12, 2))
ax.set_title('Paschen Series', color='b', size=20)
ax.set_yticks([])
ax.set_xlim(800, 1900)
ax.set_xlabel("nm", size=20, color='b')
for nm in paschen:
    ax.axvline(nm, color='r')
