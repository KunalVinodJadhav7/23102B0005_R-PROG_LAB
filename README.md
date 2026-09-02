# R-PROG_LAB SUBMISSIONS
R-PROG LABS

# Image Recognition and Classification with Keras in R

A complete R pipeline utilizing **Keras**, **TensorFlow**, and **EBImage** to load, preprocess, build, train, and evaluate a deep neural network (DNN) for binary image classification.

---

## Overview

This project demonstrates how to handle image data in R, transform it into flattened numerical arrays, construct a sequential multi-layer perceptron (MLP), and perform predictions and performance evaluations using a custom image dataset.

## Project Structure

* **Environment Setup & Data Download:** Configures Kaggle inputs/outputs and pulls the dataset archive programmatically.
* **Image Processing:** Reads raw image files, explores image properties, resizes images uniformly to $28 \\times 28$ pixels, and flattens them into $1 \\times 2352$ numeric vectors.
* **Dataset Splitting:** Organizes arrays into training (`trainx`, `trainy`) and testing (`testx`, `testy`) partitions, followed by categorical one-hot encoding for labels.
* **Model Architecture:** Implements a sequential neural network featuring dense layers with ReLU activations and a softmax output layer for binary classification.
* **Model Training & Evaluation:** Compiles the model using categorical crossentropy, fits it with validation splits, and computes training accuracy alongside a confusion matrix.

---

## Prerequisites & Libraries

Ensure the following R packages are installed in your environment before running the script:

```R
install.packages("tidyverse")
install.packages("BiocManager")
BiocManager::install("EBImage")
install.packages("keras")
install_keras() # Installs the underlying Python/TensorFlow backend if not already present
