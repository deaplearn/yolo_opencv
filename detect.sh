#! /bin/bash

if [[ $1 == "full" ]]; then
	python3 object_detection_yolo.py --mtype full
elif [[ $1 == *".jpg" ]]; then
	python3 object_detection_yolo.py --image $1
elif [[ $1 == *".mp4" ]]; then
	python3 object_detection_yolo.py --video $1
else
	python3 object_detection_yolo.py 
fi
