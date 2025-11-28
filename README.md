# Digital Quantum Simulation of Physical Systems via Trotterization and Advanced Methods

We will study efficient digital simulation of quantum dynamics, i.e., approximating

```math
U(t)=e^{-iHt}
```

for physically motivated Hamiltonians. Accurately simulating time evolution enables computing ground-state energies, response functions, and nonequilibrium dynamics in chemistry and condensed matter. While product-formula (Trotter–Suzuki) methods are straightforward and hardware-friendly, state-of-the-art approaches (LCU, QSP) offer superior asymptotic precision scaling. Our project targets a technically honest, end-to-end comparison anchored in \emph{implementations} and \emph{quantitative} evaluation on small instances.

## Installation

To install the required packages, you have several options:

### ⚠️ macOS Users (Apple Silicon / M1/M2/M3)

**Note:** If you're on macOS with Apple Clang 17.0 or later, `qiskit-aer` will likely fail to build from source via pip due to compatibility issues with the Conan dependency manager. **The notebook works fine without `qiskit-aer`** - all functionality is preserved. If you want to install it, use conda (see Option 4 below).

### Option 1: Using requirements.txt

```bash
pip install -r requirements.txt
```

### Option 4: Using conda (Optional - only if you want qiskit-aer)

**Note:** `qiskit-aer` is optional. The notebook works perfectly without it. Only install if you specifically need it.

If you want `qiskit-aer` and it fails to build with pip (common on macOS with Apple Clang 17.0+), conda often works better as it uses pre-built binaries. First install [Miniconda](https://docs.conda.io/en/latest/miniconda.html) or [Anaconda](https://www.anaconda.com/download), then:

```bash
# Install basic packages with pip
pip install numpy matplotlib pandas tqdm "qiskit>=1.2" "qiskit-algorithms>=0.2.0"

# Install qiskit-aer with conda
conda install -c conda-forge qiskit-aer -y
```

**Note:** `qiskit-aer` may require system dependencies. On macOS, you may need to install cmake:

```bash
brew install cmake
```

If `qiskit-aer` fails to install, the notebook will automatically use Qiskit's built-in simulators as a fallback (transpilation will work without a backend).
