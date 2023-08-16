

You can prevent roles/rolebindings from getting propagated.

This is done by annotating the object with `propagate.hnc.x-k8s.io/none: "true"`{{copy}}.

Now prevent the `admin`{{copy}} role from getting propagated to `team-abc`{{copy}}

<details>
  <summary>Solution</summary>

  `kubectl annotate role -n company admin propagate.hnc.x-k8s.io/none="true"`{{copy}}

</details>

Then verify that the propagated role is now removed:

`kubectl get role -n team-abc`{{copy}}