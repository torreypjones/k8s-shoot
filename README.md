# k8s-shoot
the Dockerfile is pretty self explanatory; this is basically a centos:latest image with some utilies installed to troubleshoot from INSIDE a container running in a kubernetes (openshift) cluster.  should allow you to kubectl exec or oc rsh into the container, and test network connectivity, name resolution, among other things from inside a running container in the cluster (so you have visibility to internal cluster DNS resolutoin for instance, or pod to pod networking, etc)...

#examples on how to run 
first you'll need to build the docker image and put it in your own registry, i havent created a public dockerhub image for this yet;

  in raw kubernetes, you can do something like 'kubectl run --image=k8s-shoot:latest k8s-shoot' 
deployment "nginx-app" created'

or in openshift, you can do something like: 'oc new-app --strategy=docker https://github.com/torreypjones/k8s-shoot.git'
