#!/bin/bash
python knn.py --k_list 1 2 3 4 --dataset B0 &
python knn.py --k_list 5 6 7 8 --dataset B0 &
python knn.py --k_list 9 10 11 12 --dataset B0 &
python knn.py --k_list 13 14 15 16--dataset B0 &
python knn.py --k_list 17 18 19 20 --dataset B0 &
wait 
python knn.py --k_list 1 2 3 4 --normalizer poweryeo --dataset B0 &
python knn.py --k_list 5 6 7 8 --normalizer poweryeo --dataset B0 &
python knn.py --k_list 9 10 11 12 --normalizer poweryeo --dataset B0 &
python knn.py --k_list 13 14 15 16 --normalizer poweryeo --dataset B0 &
python knn.py --k_list 17 18 19 20 --normalizer poweryeo --dataset B0 &
wait
python knn.py --k_list 1 2 3 4 --normalizer minmax --dataset B0 &
python knn.py --k_list 5 6 7 8 --normalizer minmax --dataset B0 &
python knn.py --k_list 9 10 11 12 --normalizer minmax --dataset B0 &
python knn.py --k_list 13 14 15 16 --normalizer minmax --dataset B0 &
python knn.py --k_list 17 18 19 20 --normalizer minmax --dataset B0 &
wait
python knn.py --k_list 1 2 3 4 --normalizer maxabs --dataset B0 &
python knn.py --k_list 5 6 7 8 --normalizer maxabs --dataset B0 &
python knn.py --k_list 9 10 11 12 --normalizer maxabs --dataset B0 &
python knn.py --k_list 13 14 15 16 --normalizer maxabs --dataset B0 &
python knn.py --k_list 17 18 19 20 --normalizer maxabs --dataset B0 &
wait
python knn.py --k_list 1 2 3 4 --normalizer robust --dataset B0 &
python knn.py --k_list 5 6 7 8 --normalizer robust --dataset B0 &
python knn.py --k_list 9 10 11 12 --normalizer robust --dataset B0 &
python knn.py --k_list 13 14 15 16 --normalizer robust --dataset B0 &
python knn.py --k_list 17 18 19 20 --normalizer robust --dataset B0 &
wait
python knn.py --k_list 1 2 3 4 --normalizer quantilenormal --dataset B0 &
python knn.py --k_list 5 6 7 8 --normalizer quantilenormal --dataset B0 &
python knn.py --k_list 9 10 11 12 --normalizer quantilenormal --dataset B0 &
python knn.py --k_list 13 14 15 16 --normalizer quantilenormal --dataset B0 &
python knn.py --k_list 17 18 19 20 --normalizer quantilenormal --dataset B0 &