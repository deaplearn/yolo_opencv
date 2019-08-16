#! /bin/bash


if [[ $1 == "full" ]]; then
	if [[ ! -f yolov3.weights ]]; then
		echo 'not find yolov3.weights'
		wget https://pjreddie.com/media/files/yolov3.weights
	fi

	python3 object_detection_yolo.py --mtype full

elif [[ $1 == "tiny" ]]; then
	if [[ ! -f yolov3-tiny.weights ]]; then
		echo 'not find yolov3-tiny.weights'
		wget https://pjreddie.com/media/files/yolov3-tiny.weights
	fi

	python3 object_detection_yolo.py --mtype tiny
	
elif [[ $1 == *".jpg" ]]; then
	python3 object_detection_yolo.py --image $1
elif [[ $1 == *".mp4" ]]; then
	echo "p1: "$1" p2:"$2
	python3 object_detection_yolo.py --video $1 --mtype $2
else
	python3 object_detection_yolo.py 
fi
