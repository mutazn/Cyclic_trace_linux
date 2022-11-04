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
```
