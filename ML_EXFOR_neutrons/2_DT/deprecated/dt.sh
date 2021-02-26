#!/bin/bash
python dt.py --dataset B0 &
python dt.py --dataset B0 --normalizer poweryeo &
python dt.py --dataset B0 --normalizer minmax &
python dt.py --dataset B0 --normalizer maxabs &
python dt.py --dataset B0 --normalizer robust &
python dt.py --dataset B0 --normalizer quantilenormal &
