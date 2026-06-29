# EEG Hand Movement Detection with Artificial Neural Network (ANN)

This repository contains a MATLAB project for EEG hand movement detection using an Artificial Neural Network (ANN) model. The project supports both supervised and semi-supervised learning approaches.

## Introduction
This project aims to detect hand movements based on EEG signals using an ANN model. The dataset used in this project is stored in the `Dataset` directory. The code consists of several MATLAB files that perform various tasks such as creating the ANN model, training the model using supervised and semi-supervised learning, and testing the model on a separate dataset.

## Files and Directory Structure
- `Dataset`: Contains the EEG dataset used for training and testing.
- `CreateNet.m`: MATLAB script for creating the ANN model.
- `GetMSEs.m`: MATLAB script for calculating Mean Squared Errors (MSEs) during training.
- `Main.m`: Main MATLAB script that orchestrates the training and testing process.
- `NN.m`: MATLAB script defining the ANN architecture and training parameters.
- `SemiSupervised.m`: MATLAB script implementing the semi-supervised learning algorithm.
- `Supervised.m`: MATLAB script implementing the supervised learning algorithm.

## Usage
To use this project, follow these steps:
1. Clone the repository: `git clone https://github.com/Ilia-Abolhasani/eeg-detection.git`
2. Open MATLAB and navigate to the project directory.
3. Run the `Main.m` script to execute the main process.
4. The script will load the dataset, preprocess the data, create the ANN model, train it using supervised and semi-supervised learning, and test the model on a separate dataset.
5. The accuracy of the trained models will be displayed in the MATLAB console.

## Dependencie
This project has the following dependencie:
- MATLAB 

## References
If you use this code or dataset in your research or project, please consider citing the following paper:
- Dr. Cichocki's Lab (Lab. for Advanced Brain Signal Processing), BSI, RIKEN collaboration with Shanghai Jiao Tong University.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any inquiries or issues regarding this project, please contact [Ilia-Abolhasani](mailto:abolhasani.eliya@gmail.com).






# Brain Signal Classification Using EEG and Machine Learning

## Overview

Brain Signal Classification Using EEG and Machine Learning is a Brain-Computer Interface (BCI) project that classifies human hand movement intentions using Electroencephalography (EEG) signals. The system processes EEG data, extracts significant features, classifies the signals using an Artificial Neural Network (ANN), and controls external hardware through an Arduino Nano.

The project demonstrates how brain signals can be translated into physical actions, making it suitable for assistive technologies, smart prosthetics, robotic control, and human-computer interaction.

---

## Features

* EEG signal preprocessing
* Bandpass filtering (8–30 Hz)
* Statistical feature extraction
* Artificial Neural Network (ANN) classifier
* Left-hand and Right-hand movement classification
* MATLAB implementation
* Arduino Nano integration
* Dual LED output for prediction visualization
* Approximately 87% classification accuracy

---

## System Workflow

```text
EEG Dataset
      │
      ▼
Data Preprocessing
      │
      ▼
Bandpass Filtering (8–30 Hz)
      │
      ▼
Feature Extraction
      │
      ▼
Artificial Neural Network
      │
      ▼
Prediction
(Left Hand / Right Hand)
      │
      ▼
MATLAB Serial Communication
      │
      ▼
Arduino Nano
      │
      ▼
LED Indication
```

---

## Methodology

### 1. EEG Data Acquisition

EEG signals corresponding to left-hand and right-hand motor imagery are collected from the dataset.

---

### 2. Data Preprocessing

The EEG signals are converted into double precision and cleaned by removing invalid values such as NaN and Inf.

---

### 3. Signal Filtering

A bandpass filter of **8–30 Hz** is applied to retain motor imagery frequency components while eliminating unwanted noise.

---

### 4. Feature Extraction

Five statistical features are extracted from each EEG channel:

* Mean
* Standard Deviation
* Variance
* Maximum
* Minimum

The extracted features form a 30-dimensional feature vector.

---

### 5. ANN Training

The Artificial Neural Network is trained using the extracted feature vectors.

Training split:

* Training: 70%
* Validation: 15%
* Testing: 15%

---

### 6. Prediction

The trained ANN predicts one of two classes:

* Left Hand Movement
* Right Hand Movement

---

### 7. Hardware Output

The prediction result is transmitted from MATLAB to Arduino Nano through serial communication.

Arduino controls two LEDs:

* Left Hand → LED 1 ON
* Right Hand → LED 2 ON

---

## Hardware Requirements

* Arduino Nano
* Two LEDs
* 220 Ω Resistors
* USB Cable
* Breadboard
* Jumper Wires

---

## Software Requirements

* MATLAB
* Neural Network Toolbox
* Signal Processing Toolbox
* Arduino IDE

---

## Folder Structure

```text
Brain-Signal-Classification/
│
├── Dataset/
│   └── EEG Dataset
│
├── MATLAB/
│   ├── Training Script
│   ├── Prediction Script
│   ├── Feature Extraction
│   ├── Filtering
│   └── LeftRightHandANN.mat
│
├── Arduino/
│   └── Arduino_LED_Control.ino
│
├── Images/
│
├── README.md
│
└── LICENSE
```

---

## Installation



### Open MATLAB

Load the dataset.

```matlab
load('Dataset.mat')
```

Train the ANN model.

```matlab
trainModel
```

---

### Connect Arduino

Upload the Arduino sketch using Arduino IDE.

---

### Run Prediction

Execute the MATLAB prediction script.

```matlab
predictEEG
```

The Arduino Nano will automatically receive the prediction and activate the corresponding LED.

---

## Results

* Classification Accuracy: **≈87%**
* Real-time prediction of left and right hand movement.
* Successful MATLAB-Arduino serial communication.
* Hardware validation using dual LED indication.

---

## Applications

* Brain-Computer Interface (BCI)
* Smart Prosthetic Control
* Robotic Arm Control
* Smart Wheelchair Navigation
* Assistive Healthcare Systems
* Rehabilitation Engineering
* Human-Computer Interaction

---

## Future Scope

* Real-time EEG headset integration.
* Deep Learning (CNN/LSTM) based classification.
* Multi-class hand gesture recognition.
* Robotic arm control.
* IoT-enabled BCI applications.
* Mobile application integration.
* Cloud-based EEG analytics.

---

## Authors

* **Saloni Parihar**
* **Siddharth Pal**

### Project Guide

**Mr. Ankit Muley**

---

## Acknowledgements

We sincerely thank our project guide, **Mr. Ankit Muley**, for his continuous guidance and support throughout this project. We also acknowledge MATLAB and Arduino for providing the development environment used to implement and validate this Brain-Computer Interface system.

---

## License

This project is developed for academic and research purposes.
