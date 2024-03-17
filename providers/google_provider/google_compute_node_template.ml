(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_node_template__node_type_flexibility = {
  cpus : string option; [@option]
      (** Number of virtual CPUs to use. *)
  local_ssd : string;  (** Use local SSD *)
  memory : string option; [@option]
      (** Physical memory available to the node, defined in MB. *)
}
[@@deriving yojson_of]
(** Flexible properties for the desired node type. Node groups that
use this node template will create nodes of a type that matches
these properties. Only one of nodeTypeFlexibility and nodeType can
be specified. *)

type google_compute_node_template__server_binding = {
  type_ : string; [@key "type"]
      (** Type of server binding policy. If 'RESTART_NODE_ON_ANY_SERVER',
nodes using this template will restart on any physical server
following a maintenance event.

If 'RESTART_NODE_ON_MINIMAL_SERVER', nodes using this template
will restart on the same physical server following a maintenance
event, instead of being live migrated to or restarted on a new
physical server. This option may be useful if you are using
software licenses tied to the underlying server characteristics
such as physical sockets or cores, to avoid the need for
additional licenses when maintenance occurs. However, VMs on such
nodes will experience outages while maintenance is applied. Possible values: [RESTART_NODE_ON_ANY_SERVER, RESTART_NODE_ON_MINIMAL_SERVERS] *)
}
[@@deriving yojson_of]
(** The server binding policy for nodes using this template. Determines
where the nodes should restart following a maintenance event. *)

type google_compute_node_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_node_template__timeouts *)

type google_compute_node_template = {
  cpu_overcommit_type : string option; [@option]
      (** CPU overcommit. Default value: NONE Possible values: [ENABLED, NONE] *)
  description : string option; [@option]
      (** An optional textual description of the resource. *)
  name : string option; [@option]  (** Name of the resource. *)
  node_affinity_labels : (string * string) list option; [@option]
      (** Labels to use for node affinity, which will be used in
instance scheduling. *)
  node_type : string option; [@option]
      (** Node type to use for nodes group that are created from this template.
Only one of nodeTypeFlexibility and nodeType can be specified. *)
  node_type_flexibility :
    google_compute_node_template__node_type_flexibility list;
  server_binding : google_compute_node_template__server_binding list;
  timeouts : google_compute_node_template__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_node_template *)

let google_compute_node_template ?cpu_overcommit_type ?description
    ?name ?node_affinity_labels ?node_type ?timeouts
    ~node_type_flexibility ~server_binding __resource_id =
  let __resource_type = "google_compute_node_template" in
  let __resource =
    {
      cpu_overcommit_type;
      description;
      name;
      node_affinity_labels;
      node_type;
      node_type_flexibility;
      server_binding;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_node_template __resource);
  ()
