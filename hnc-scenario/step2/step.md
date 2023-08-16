

Roles and rolebindings are by default propagated from the parent to the subnamespace.

Create a role named `admin`{{copy}} in the `company`{{copy}} namespace.

<details>
  <summary>Command</summary>

  `kubectl -n company create role admin --verb=get --resource=pods`

</details>

Then verify it has been progated to the subnamespace:

`kubectl get role -n team-abc`{{copy}}