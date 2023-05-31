# Bird eye view for autonomous cars under adverse weather conditions

# Abstract 
Advanced automotive active-safety systems, in general, and autonomous vehicles, in
particular, rely heavily on visual data to classify and localize objects such as pedestri-
ans, traffic signs and lights, and other nearby cars, to assist the corresponding vehicles
maneuver safely in their environments. However, the performance of object detection
methods could degrade rather significantly under challenging weather scenarios includ-
ing rainy conditions. Our goal includes surveying and analyzing the performance of
BEV methods trained and tested in the paper X in which visual data is captured under
very often clear and sometimes rainy conditions. Moreover, we survey and evaluate
the efficacy and limitations of the model used in X.

# Nuscenes Exploration
The model in the paper was trained on the Nuscenes data set. In this section, we want to
explore the potency of extreme weather conditions in this data set. Out of all the adverse
weather conditions, we shall mainly focus on 3 main ones : fog , snow and rain. We can
mention that although this dataset might contain some visuals captured in rainy conditions,
they do not have weather tagging like other datasets such as BDD100k. The Nuscenes
dataset is comprised of high-definition sensor data collected from a diverse set of urban
driving scenarios in multiple cities worldwide. 
We can see that rain data represents 20% of the whole dataset, whereas fog and snow
camera pictures are nonexistent in the dataset. This leads us to speculate that a model
trained on the Nuscenes dataset will not be able to generalize to cases of rainy conditions,
and will definitely perform poorly on fog and snow datasets. It is also worth noting that
several images in the data set are wrongly tagged as rainy weather when they actually show
clear or cloudy conditions.


# Data download
In order to get the mini Nuscenes data set : 
```
mkdir -p /data/sets/nuscenes  # Make the directory to store the nuScenes dataset in.

wget https://www.nuscenes.org/data/v1.0-mini.tgz  # Download the nuScenes mini split.

tar -xf v1.0-mini.tgz -C /data/sets/nuscenes  # Uncompress the nuScenes mini split.

pip install nuscenes-devkit &> /dev/null  # Install nuScenes.
```

# Setup 
In order to get the code running, Python 3.7 should be used. The following packages are needed also : 

```
pytorch
cv2
numpy
pickle
pyquaternion
shapely
lmdb

```

You will need then to clone the repository of the original github of the paper : 


```

git clone https://github.com/avishkarsaha/translating-images-into-maps.git

```

























