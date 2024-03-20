(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type node_type_configs = {
  custom_core_count : float prop option; [@option]
      (** Customized number of cores available to each node of the type.
This number must always be one of 'nodeType.availableCustomCoreCounts'.
If zero is provided max value from 'nodeType.availableCustomCoreCounts' will be used.
Once the customer is created then corecount cannot be changed. *)
  node_count : float prop;
      (** The number of nodes of this type in the cluster. *)
  node_type_id : string prop;  (** node_type_id *)
}
[@@deriving yojson_of]
(** The map of cluster node types in this cluster,
where the key is canonical identifier of the node type (corresponds to the NodeType). *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_vmwareengine_cluster = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The ID of the Cluster. *)
  parent : string prop;
      (** The resource name of the private cloud to create a new cluster in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud *)
  node_type_configs : node_type_configs list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_cluster *)

let node_type_configs ?custom_core_count ~node_count ~node_type_id ()
    : node_type_configs =
  { custom_core_count; node_count; node_type_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_cluster ?id ?timeouts ~name ~parent
    ~node_type_configs () : google_vmwareengine_cluster =
  { id; name; parent; node_type_configs; timeouts }

type t = {
  id : string prop;
  management : bool prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
}

let make ?id ?timeouts ~name ~parent ~node_type_configs __id =
  let __type = "google_vmwareengine_cluster" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       management = Prop.computed __type __id "management";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_cluster
        (google_vmwareengine_cluster ?id ?timeouts ~name ~parent
           ~node_type_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~parent
    ~node_type_configs __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~parent ~node_type_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
