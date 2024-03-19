(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type node_pool_config__node_configs = {
  labels : (string * string prop) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it's best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  node_ip : string prop option; [@option]
      (** The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 *)
}
[@@deriving yojson_of]
(** The list of machine addresses in the Bare Metal Node Pool. *)

type node_pool_config__taints = {
  effect : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string prop option; [@option]
      (** Key associated with the effect. *)
  value : string prop option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type node_pool_config = {
  labels : (string * string prop) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it's best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  operating_system : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). *)
  node_configs : node_pool_config__node_configs list;
  taints : node_pool_config__taints list;
}
[@@deriving yojson_of]
(** Node pool configuration. *)

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

type google_gkeonprem_bare_metal_node_pool = {
  annotations : (string * string prop) list option; [@option]
      (** Annotations on the Bare Metal Node Pool.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  bare_metal_cluster : string prop;
      (** The cluster this node pool belongs to. *)
  display_name : string prop option; [@option]
      (** The display name for the Bare Metal Node Pool. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the resource. *)
  name : string prop;  (** The bare metal node pool name. *)
  project : string prop option; [@option]  (** project *)
  node_pool_config : node_pool_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gkeonprem_bare_metal_node_pool *)

let node_pool_config__node_configs ?labels ?node_ip () :
    node_pool_config__node_configs =
  { labels; node_ip }

let node_pool_config__taints ?effect ?key ?value () :
    node_pool_config__taints =
  { effect; key; value }

let node_pool_config ?labels ?operating_system ~node_configs ~taints
    () : node_pool_config =
  { labels; operating_system; node_configs; taints }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gkeonprem_bare_metal_node_pool ?annotations ?display_name
    ?id ?project ?timeouts ~bare_metal_cluster ~location ~name
    ~node_pool_config () : google_gkeonprem_bare_metal_node_pool =
  {
    annotations;
    bare_metal_cluster;
    display_name;
    id;
    location;
    name;
    project;
    node_pool_config;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  bare_metal_cluster : string prop;
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
}

let register ?tf_module ?annotations ?display_name ?id ?project
    ?timeouts ~bare_metal_cluster ~location ~name ~node_pool_config
    __resource_id =
  let __resource_type = "google_gkeonprem_bare_metal_node_pool" in
  let __resource =
    google_gkeonprem_bare_metal_node_pool ?annotations ?display_name
      ?id ?project ?timeouts ~bare_metal_cluster ~location ~name
      ~node_pool_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gkeonprem_bare_metal_node_pool __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       bare_metal_cluster =
         Prop.computed __resource_type __resource_id
           "bare_metal_cluster";
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
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
       state = Prop.computed __resource_type __resource_id "state";
       status = Prop.computed __resource_type __resource_id "status";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
