# Cone-Detection-Algorithm
Cone detection algorithm for autonomous driving applications

Overview 
--------
Significant advancement have been achieved in comprehending the aspects of road scenes using single-lens cameras. Nevertheless, these developments focus on specific categories like cars and pedestrians. This study delves into the examinations of traffic cones, a vital object class essential for autonomous vehicle traffic control.

Project Description
-------------------
In this project, a trail video is imported to matlab for video labeling & then exported to workspace, and an alogorith is developed to detect the cone. Deep learing-based approaches using conventional neural networks(YOLO v2) is used to detect object(cone).
process goes through in this order:
- Label Data
- Design & Train a Deep Network
- Deploy Trained Model to GPUs

To finish up the algorithm to deploy trained model to GPU, these steps are taken care of:
- Data Label
- Convert ground truth object into training data
- Design YOLOv2 Network
  1. define image input layer
  2. define middle layer
  3. combine input & middle layer
  4. define Anchor boxes
  5. assemble YOLOv2 network
- Train the network
- Performance evaluation
  Test dataset, Detect Objects in video

(Matlab algorithm is attached respectively here)

Deploy Trained Models to GPUs
-----------------------------
- Setup the Jetson & the host computer
- Establish a connection with the Jetson & verify the setup
- prepare Matlab code for code generation (coneDetectionUsingYolo.m)
- generate code (CD.mlx) & deploy the application

Outcome
-------
Enabled accurate Cone detection for autonomous cars, and expertise gained in Deep Learning.
