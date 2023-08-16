
Create a subnamespace named `team-abc`{{copy}} with the existing namespace `company`{{copy}} as parent.

Tip: Check the `kubectl hns create`{{copy}} command

<details>
  <summary>Solution</summary>

`kubectl hns create -n company team-abc`{{copy}}
</details>

<details>
  <summary>Alternative solution</summary>

```
kubectl apply -f - <<EOF
apiVersion: hnc.x-k8s.io/v1alpha2
kind: SubnamespaceAnchor
metadata:
  name: team-abc
  namespace: company
EOF
```
</details>

After creating the subnamespace, verify with:
* `kubectl get ns <namespace>`{{copy}}
* `kubectl hns describe <namespace>`{{copy}}
* `kubectl hns tree <parent-namespace>`{{copy}}