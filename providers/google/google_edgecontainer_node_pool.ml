(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type local_disk_encryption = {
  kms_key : string prop option; [@option]
      (** The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.
If not specified, a Google-managed key will be used instead. *)
}
[@@deriving yojson_of]
(** Local disk encryption options. This field is only used when enabling CMEK support. *)

type node_config = {
  labels : (string * string prop) list option; [@option]
      (** The Kubernetes node labels *)
}
[@@deriving yojson_of]
(** Configuration for each node in the NodePool *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_edgecontainer_node_pool = {
  cluster : string prop;
      (** The name of the target Distributed Cloud Edge Cluster. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The location of the resource. *)
  machine_filter : string prop option; [@option]
      (** Only machines matching this filter will be allowed to join the node pool.
The filtering language accepts strings like name=<name>, and is
documented in more detail in [AIP-160](https://google.aip.dev/160). *)
  name : string prop;  (** The resource name of the node pool. *)
  node_count : float prop;  (** The number of nodes in the pool. *)
  node_location : string prop;
      (** Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: 'us-central1-edge-customer-a'. *)
  project : string prop option; [@option]  (** project *)
  local_disk_encryption : local_disk_encryption list;
  node_config : node_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_edgecontainer_node_pool *)

let local_disk_encryption ?kms_key () : local_disk_encryption =
  { kms_key }

let node_config ?labels () : node_config = { labels }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_edgecontainer_node_pool ?id ?labels ?machine_filter
    ?project ?timeouts ~cluster ~location ~name ~node_count
    ~node_location ~local_disk_encryption ~node_config () :
    google_edgecontainer_node_pool =
  {
    cluster;
    id;
    labels;
    location;
    machine_filter;
    name;
    node_count;
    node_location;
    project;
    local_disk_encryption;
    node_config;
    timeouts;
  }

type t = {
  cluster : string prop;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  machine_filter : string prop;
  name : string prop;
  node_count : float prop;
  node_location : string prop;
  node_version : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?id ?labels ?machine_filter ?project ?timeouts ~cluster
    ~location ~name ~node_count ~node_location ~local_disk_encryption
    ~node_config __id =
  let __type = "google_edgecontainer_node_pool" in
  let __attrs =
    ({
       cluster = Prop.computed __type __id "cluster";
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       machine_filter = Prop.computed __type __id "machine_filter";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       node_location = Prop.computed __type __id "node_location";
       node_version = Prop.computed __type __id "node_version";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_edgecontainer_node_pool
        (google_edgecontainer_node_pool ?id ?labels ?machine_filter
           ?project ?timeouts ~cluster ~location ~name ~node_count
           ~node_location ~local_disk_encryption ~node_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?machine_filter ?project
    ?timeouts ~cluster ~location ~name ~node_count ~node_location
    ~local_disk_encryption ~node_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?machine_filter ?project ?timeouts ~cluster
      ~location ~name ~node_count ~node_location
      ~local_disk_encryption ~node_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
