#!/usr/bin/env bash
echo 'Change environment to --> '$1;
if [ $1 -eq 1 ]; then
        echo "check context ====== "
        kubectl config get-contexts
elif [ $1 -eq 2 ]; then
        echo "changing to minikube ===== "
        kubectl config use-context minikube
elif [ $1 -eq 3 ]; then
        echo "changing to aws ====== "
        kubectl config use-context arn:aws:eks:ap-south-1:115234411479:cluster/dees-cloud
elif [ $1 -eq 4 ]; then
        echo "set to brixton namespace ===== "
        kubectl config set-context --current --namespace brixton
fi