(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__taints = {
  effect : string prop option; [@option]
      (** Available taint effects. Possible values: [EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string prop;  (** Key associated with the effect. *)
  value : string prop;  (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type config__vsphere_config__tags = {
  category : string prop option; [@option]
      (** The Vsphere tag category. *)
  tag : string prop option; [@option]  (** The Vsphere tag name. *)
}
[@@deriving yojson_of]
(** Tags to apply to VMs. *)

type config__vsphere_config = {
  datastore : string prop option; [@option]
      (** The name of the vCenter datastore. Inherited from the user cluster. *)
  host_groups : string prop list option; [@option]
      (** Vsphere host groups to apply to all VMs in the node pool *)
  tags : config__vsphere_config__tags list;
}
[@@deriving yojson_of]
(** Specifies the vSphere config for node pool. *)

type config = {
  boot_disk_size_gb : float prop option; [@option]
      (** VMware disk size to be used during creation. *)
  cpus : float prop option; [@option]
      (** The number of CPUs for each node in the node pool. *)
  enable_load_balancer : bool prop option; [@option]
      (** Allow node pool traffic to be load balanced. Only works for clusters with
MetalLB load balancers. *)
  image : string prop option; [@option]
      (** The OS image name in vCenter, only valid when using Windows. *)
  image_type : string prop;
      (** The OS image to be used for each node in a node pool.
Currently 'cos', 'ubuntu', 'ubuntu_containerd' and 'windows' are supported. *)
  labels : (string * string prop) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to each node.
These will added in addition to any default label(s) that
Kubernetes may apply to the node.
In case of conflict in label keys, the applied set may differ depending on
the Kubernetes version -- it's best to assume the behavior is undefined
and conflicts should be avoided. *)
  memory_mb : float prop option; [@option]
      (** The megabytes of memory for each node in the node pool. *)
  replicas : float prop option; [@option]
      (** The number of nodes in the node pool. *)
  taints : config__taints list;
  vsphere_config : config__vsphere_config list;
}
[@@deriving yojson_of]
(** The node configuration of the node pool. *)

type node_pool_autoscaling = {
  max_replicas : float prop;
      (** Maximum number of replicas in the NodePool. *)
  min_replicas : float prop;
      (** Minimum number of replicas in the NodePool. *)
}
[@@deriving yojson_of]
(** Node Pool autoscaling config for the node pool. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type status = {
  conditions : status__conditions list;  (** conditions *)
  error_message : string prop;  (** error_message *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_node_pool = {
  annotations : (string * string prop) list option; [@option]
      (** Annotations on the node Pool.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  display_name : string prop option; [@option]
      (** The display name for the node pool. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the resource. *)
  name : string prop;  (** The vmware node pool name. *)
  project : string prop option; [@option]  (** project *)
  vmware_cluster : string prop;
      (** The cluster this node pool belongs to. *)
  config : config list;
  node_pool_autoscaling : node_pool_autoscaling list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gkeonprem_vmware_node_pool *)

let config__taints ?effect ~key ~value () : config__taints =
  { effect; key; value }

let config__vsphere_config__tags ?category ?tag () :
    config__vsphere_config__tags =
  { category; tag }

let config__vsphere_config ?datastore ?host_groups ~tags () :
    config__vsphere_config =
  { datastore; host_groups; tags }

let config ?boot_disk_size_gb ?cpus ?enable_load_balancer ?image
    ?labels ?memory_mb ?replicas ~image_type ~taints ~vsphere_config
    () : config =
  {
    boot_disk_size_gb;
    cpus;
    enable_load_balancer;
    image;
    image_type;
    labels;
    memory_mb;
    replicas;
    taints;
    vsphere_config;
  }

let node_pool_autoscaling ~max_replicas ~min_replicas () :
    node_pool_autoscaling =
  { max_replicas; min_replicas }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gkeonprem_vmware_node_pool ?annotations ?display_name ?id
    ?project ?timeouts ~location ~name ~vmware_cluster ~config
    ~node_pool_autoscaling () : google_gkeonprem_vmware_node_pool =
  {
    annotations;
    display_name;
    id;
    location;
    name;
    project;
    vmware_cluster;
    config;
    node_pool_autoscaling;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  on_prem_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
  vmware_cluster : string prop;
}

let make ?annotations ?display_name ?id ?project ?timeouts ~location
    ~name ~vmware_cluster ~config ~node_pool_autoscaling __id =
  let __type = "google_gkeonprem_vmware_node_pool" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       display_name = Prop.computed __type __id "display_name";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       on_prem_version = Prop.computed __type __id "on_prem_version";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       vmware_cluster = Prop.computed __type __id "vmware_cluster";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gkeonprem_vmware_node_pool
        (google_gkeonprem_vmware_node_pool ?annotations ?display_name
           ?id ?project ?timeouts ~location ~name ~vmware_cluster
           ~config ~node_pool_autoscaling ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?display_name ?id ?project
    ?timeouts ~location ~name ~vmware_cluster ~config
    ~node_pool_autoscaling __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?display_name ?id ?project ?timeouts ~location
      ~name ~vmware_cluster ~config ~node_pool_autoscaling __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
