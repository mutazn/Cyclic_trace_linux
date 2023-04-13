# Cyclic_trace_linux
Source: https://github.com/amitanand-ms/Cyclic_trace_linux
---
```
curl -LO https://raw.githubusercontent.com/mutazn/Cyclic_trace_linux/main/tcpdump-pvc.yaml
curl -LO https://raw.githubusercontent.com/mutazn/Cyclic_trace_linux/main/tcpdump-ds.yaml
curl -LO https://raw.githubusercontent.com/mutazn/Cyclic_trace_linux/main/netcat-ds.yaml
```
```
kubectl apply -f tcpdump-pvc.yaml
kubectl apply -f tcpdump-ds.yaml
kubectl apply -f netcat-ds.yaml
kubectl patch pv <pvc_name>  -p "{\"spec\":{\"persistentVolumeReclaimPolicy\":\"Retain\"}}"
```

To caputer all trafic:
```
curl -LO https://raw.githubusercontent.com/mutazn/Cyclic_trace_linux/main/tcpdump-pvc.yaml

curl -LO https://raw.githubusercontent.com/mutazn/Cyclic_trace_linux/main/tcpdump-ds-all.yaml
```
```
kubectl apply -f tcpdump-pvc.yaml
kubectl apply -f tcpdump-ds-all.yaml
kubectl patch pv <pvc_name>  -p "{\"spec\":{\"persistentVolumeReclaimPolicy\":\"Retain\"}}"
```

**Note:** 
1. Make sure to add the toleratoins if it is applicable for your case
2. The scripts have static IPs and ports so make sure that these IPs and ports are corrects
