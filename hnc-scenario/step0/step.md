
You have gotten access to a Kubernetes cluster where you have restricted permissions.

* You cannot create/delete/manage regular namespaces.  
  `kubectl delete namespace company`{{copy}}
* You cannot create/delete/manage objects in namespaces other than the "company" namespace.  
  `kubectl delete pod -n hnc-system --all`{{copy}}

Now lets walk you through creating hierarchical namespaces for different services, teams or groups.
