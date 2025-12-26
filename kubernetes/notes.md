1. add label to each node

- type=controller
- type=agent-a
- type=agent-b

```
kubectl label node <node-name> <key>=<value>
```

2. add taint to agent-b

```
kubectl taint nodes <node-name> manual=true:NoSchedule
```
