#!/bin/bash
# Installation script for trotterization-quantum-simulation project

echo "Installing required packages..."

# Install basic packages first (these don't require compilation)
pip install numpy matplotlib pandas tqdm

# Install qiskit and qiskit-algorithms
pip install "qiskit>=1.2" "qiskit-algorithms>=0.2.0"

# Try to install qiskit-aer (may require system dependencies)
echo ""
echo "Attempting to install qiskit-aer..."
echo "Note: If this fails, you may need to:"
echo "  1. Install system dependencies (e.g., on macOS: brew install cmake)"
echo "  2. Use conda: conda install -c conda-forge qiskit-aer"
echo ""

pip install "qiskit-aer>=0.14" || {
    echo ""
    echo "Warning: qiskit-aer installation failed."
    echo "The notebook will use qiskit's built-in simulators as a fallback."
    echo "You can continue, but some features may be limited."
}

echo ""
echo "Installation complete!"

