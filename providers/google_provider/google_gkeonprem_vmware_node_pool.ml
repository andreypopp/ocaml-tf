(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gkeonprem_vmware_node_pool__config__taints = {
  effect : string option; [@option]
      (** Available taint effects. Possible values: [EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string;  (** Key associated with the effect. *)
  value : string;  (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type google_gkeonprem_vmware_node_pool__config__vsphere_config__tags = {
  category : string option; [@option]
      (** The Vsphere tag category. *)
  tag : string option; [@option]  (** The Vsphere tag name. *)
}
[@@deriving yojson_of]
(** Tags to apply to VMs. *)

type google_gkeonprem_vmware_node_pool__config__vsphere_config = {
  datastore : string option; [@option]
      (** The name of the vCenter datastore. Inherited from the user cluster. *)
  host_groups : string list option; [@option]
      (** Vsphere host groups to apply to all VMs in the node pool *)
  tags :
    google_gkeonprem_vmware_node_pool__config__vsphere_config__tags
    list;
}
[@@deriving yojson_of]
(** Specifies the vSphere config for node pool. *)

type google_gkeonprem_vmware_node_pool__config = {
  boot_disk_size_gb : float option; [@option]
      (** VMware disk size to be used during creation. *)
  cpus : float option; [@option]
      (** The number of CPUs for each node in the node pool. *)
  enable_load_balancer : bool option; [@option]
      (** Allow node pool traffic to be load balanced. Only works for clusters with
MetalLB load balancers. *)
  image : string option; [@option]
      (** The OS image name in vCenter, only valid when using Windows. *)
  image_type : string;
      (** The OS image to be used for each node in a node pool.
Currently 'cos', 'ubuntu', 'ubuntu_containerd' and 'windows' are supported. *)
  labels : (string * string) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to each node.
These will added in addition to any default label(s) that
Kubernetes may apply to the node.
In case of conflict in label keys, the applied set may differ depending on
the Kubernetes version -- it's best to assume the behavior is undefined
and conflicts should be avoided. *)
  memory_mb : float option; [@option]
      (** The megabytes of memory for each node in the node pool. *)
  replicas : float option; [@option]
      (** The number of nodes in the node pool. *)
  taints : google_gkeonprem_vmware_node_pool__config__taints list;
  vsphere_config :
    google_gkeonprem_vmware_node_pool__config__vsphere_config list;
}
[@@deriving yojson_of]
(** The node configuration of the node pool. *)

type google_gkeonprem_vmware_node_pool__node_pool_autoscaling = {
  max_replicas : float;
      (** Maximum number of replicas in the NodePool. *)
  min_replicas : float;
      (** Minimum number of replicas in the NodePool. *)
}
[@@deriving yojson_of]
(** Node Pool autoscaling config for the node pool. *)

type google_gkeonprem_vmware_node_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gkeonprem_vmware_node_pool__timeouts *)

type google_gkeonprem_vmware_node_pool__status__conditions = {
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_node_pool__status = {
  conditions :
    google_gkeonprem_vmware_node_pool__status__conditions list;
      (** conditions *)
  error_message : string;  (** error_message *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_node_pool = {
  annotations : (string * string) list option; [@option]
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
  display_name : string option; [@option]
      (** The display name for the node pool. *)
  id : string option; [@option]  (** id *)
  location : string;  (** The location of the resource. *)
  name : string;  (** The vmware node pool name. *)
  project : string option; [@option]  (** project *)
  vmware_cluster : string;
      (** The cluster this node pool belongs to. *)
  config : google_gkeonprem_vmware_node_pool__config list;
  node_pool_autoscaling :
    google_gkeonprem_vmware_node_pool__node_pool_autoscaling list;
  timeouts : google_gkeonprem_vmware_node_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_gkeonprem_vmware_node_pool *)

let google_gkeonprem_vmware_node_pool ?annotations ?display_name ?id
    ?project ?timeouts ~location ~name ~vmware_cluster ~config
    ~node_pool_autoscaling __resource_id =
  let __resource_type = "google_gkeonprem_vmware_node_pool" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gkeonprem_vmware_node_pool __resource);
  ()
