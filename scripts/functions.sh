#!/bin/bash

chao() {
    echo "Xin chao $1!"
}

tao_thu_muc() {
    mkdir -p $1
    echo "Da tao thu muc $1"
}

chao "Hiep"
chao "DevOps"
tao_thu_muc ~/devops-lab/test_func
