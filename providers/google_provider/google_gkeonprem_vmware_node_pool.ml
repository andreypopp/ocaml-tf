(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gkeonprem_vmware_node_pool__config__taints = {
  effect : string prop option; [@option]
      (** Available taint effects. Possible values: [EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string prop;  (** Key associated with the effect. *)
  value : string prop;  (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type google_gkeonprem_vmware_node_pool__config__vsphere_config__tags = {
  category : string prop option; [@option]
      (** The Vsphere tag category. *)
  tag : string prop option; [@option]  (** The Vsphere tag name. *)
}
[@@deriving yojson_of]
(** Tags to apply to VMs. *)

type google_gkeonprem_vmware_node_pool__config__vsphere_config = {
  datastore : string prop option; [@option]
      (** The name of the vCenter datastore. Inherited from the user cluster. *)
  host_groups : string prop list option; [@option]
      (** Vsphere host groups to apply to all VMs in the node pool *)
  tags :
    google_gkeonprem_vmware_node_pool__config__vsphere_config__tags
    list;
}
[@@deriving yojson_of]
(** Specifies the vSphere config for node pool. *)

type google_gkeonprem_vmware_node_pool__config = {
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
  taints : google_gkeonprem_vmware_node_pool__config__taints list;
  vsphere_config :
    google_gkeonprem_vmware_node_pool__config__vsphere_config list;
}
[@@deriving yojson_of]
(** The node configuration of the node pool. *)

type google_gkeonprem_vmware_node_pool__node_pool_autoscaling = {
  max_replicas : float prop;
      (** Maximum number of replicas in the NodePool. *)
  min_replicas : float prop;
      (** Minimum number of replicas in the NodePool. *)
}
[@@deriving yojson_of]
(** Node Pool autoscaling config for the node pool. *)

type google_gkeonprem_vmware_node_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gkeonprem_vmware_node_pool__timeouts *)

type google_gkeonprem_vmware_node_pool__status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_node_pool__status = {
  conditions :
    google_gkeonprem_vmware_node_pool__status__conditions list;
      (** conditions *)
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
  config : google_gkeonprem_vmware_node_pool__config list;
  node_pool_autoscaling :
    google_gkeonprem_vmware_node_pool__node_pool_autoscaling list;
  timeouts : google_gkeonprem_vmware_node_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_gkeonprem_vmware_node_pool *)

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
  status : google_gkeonprem_vmware_node_pool__status list prop;
  uid : string prop;
  update_time : string prop;
  vmware_cluster : string prop;
}

let google_gkeonprem_vmware_node_pool ?annotations ?display_name ?id
    ?project ?timeouts ~location ~name ~vmware_cluster ~config
    ~node_pool_autoscaling __resource_id =
  let __resource_type = "google_gkeonprem_vmware_node_pool" in
  let __resource =
    ({
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
      : google_gkeonprem_vmware_node_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gkeonprem_vmware_node_pool __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       on_prem_version =
         Prop.computed __resource_type __resource_id
           "on_prem_version";
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
       state = Prop.computed __resource_type __resource_id "state";
       status = Prop.computed __resource_type __resource_id "status";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       vmware_cluster =
         Prop.computed __resource_type __resource_id "vmware_cluster";
     }
      : t)
  in
  __resource_attributes
