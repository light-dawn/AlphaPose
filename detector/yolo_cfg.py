from easydict import EasyDict as edict

cfg = edict()
cfg.CONFIG = 'detector/yolo/cfg/yolov3-tiny.cfg'
cfg.WEIGHTS = 'detector/yolo/data/yolov3-tiny.weights'
cfg.INP_DIM =  608
cfg.NMS_THRES =  0.6
cfg.CONFIDENCE = 0.1
cfg.NUM_CLASSES = 80
