# Midterm Digital Signal Processing  

## Introduction  

This repository contains MATLAB code for processing and analyzing audio data.  

## Files  

- `main.m`: The main script that calls audio processing functions.  
- `Phone_F1.m`: Processes the audio signal from the `phone_F1.wav` file.  
- `Phone_M1.m`: Processes the audio signal from the `phone_M1.wav` file.  
- `Studio_F1.m`: Processes the audio signal from the `studio_F1.wav` file.  
- `Studio_M1.m`: Processes the audio signal from the `studio_M1.wav` file.  

## Usage  

To run the program, open MATLAB and execute the `main.m` script:  

```matlab
main
```  

## Function Descriptions  

- `Phone_F1.m`:  
  - Reads and processes data from the `phone_F1.wav` file.  
  - Computes Short-Time Energy (STE) and Zero-Crossing Rate (ZCR).  
  - Normalizes the data and determines intersection points between STE and ZCR.  
  - Plots graphs displaying relevant parameters.  

- `Phone_M1.m`:  
  - Reads and processes data from the `phone_M1.wav` file.  
  - Performs the same calculations as `Phone_F1.m` on different data.  

- `Studio_F1.m`:  
  - Reads and processes data from the `studio_F1.wav` file.  
  - Executes similar calculations as the previous scripts.  

- `Studio_M1.m`:  
  - Reads and processes data from the `studio_M1.wav` file.  
  - Executes similar calculations as the previous scripts.  

## Requirements  

- The latest version of MATLAB or a compatible version.  
- The audio files (`phone_F1.wav`, `phone_M1.wav`, `studio_F1.wav`, `studio_M1.wav`) must be in the same directory as the source code.  

## Contact  

If you encounter any issues running the program, please contact via email or create an issue in this repository.  
