(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_gkeonprem_bare_metal_node_pool__node_pool_config__node_configs = {
  labels : (string * string) list option; [@option]
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
  node_ip : string option; [@option]
      (** The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 *)
}
[@@deriving yojson_of]
(** The list of machine addresses in the Bare Metal Node Pool. *)

type google_gkeonprem_bare_metal_node_pool__node_pool_config__taints = {
  effect : string option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string option; [@option]
      (** Key associated with the effect. *)
  value : string option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type google_gkeonprem_bare_metal_node_pool__node_pool_config = {
  labels : (string * string) list option; [@option]
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
  operating_system : string option; [@option]
      (** Specifies the nodes operating system (default: LINUX). *)
  node_configs :
    google_gkeonprem_bare_metal_node_pool__node_pool_config__node_configs
    list;
  taints :
    google_gkeonprem_bare_metal_node_pool__node_pool_config__taints
    list;
}
[@@deriving yojson_of]
(** Node pool configuration. *)

type google_gkeonprem_bare_metal_node_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gkeonprem_bare_metal_node_pool__timeouts *)

type google_gkeonprem_bare_metal_node_pool__status__conditions = {
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_node_pool__status = {
  conditions :
    google_gkeonprem_bare_metal_node_pool__status__conditions list;
      (** conditions *)
  error_message : string;  (** error_message *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_node_pool = {
  annotations : (string * string) list option; [@option]
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
  bare_metal_cluster : string;
      (** The cluster this node pool belongs to. *)
  display_name : string option; [@option]
      (** The display name for the Bare Metal Node Pool. *)
  location : string;  (** The location of the resource. *)
  name : string;  (** The bare metal node pool name. *)
  node_pool_config :
    google_gkeonprem_bare_metal_node_pool__node_pool_config list;
  timeouts : google_gkeonprem_bare_metal_node_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_gkeonprem_bare_metal_node_pool *)

let google_gkeonprem_bare_metal_node_pool ?annotations ?display_name
    ?timeouts ~bare_metal_cluster ~location ~name ~node_pool_config
    __resource_id =
  let __resource_type = "google_gkeonprem_bare_metal_node_pool" in
  let __resource =
    {
      annotations;
      bare_metal_cluster;
      display_name;
      location;
      name;
      node_pool_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gkeonprem_bare_metal_node_pool __resource);
  ()
