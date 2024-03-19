(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type node_type_flexibility = {
  cpus : string prop option; [@option]
      (** Number of virtual CPUs to use. *)
  memory : string prop option; [@option]
      (** Physical memory available to the node, defined in MB. *)
}
[@@deriving yojson_of]
(** Flexible properties for the desired node type. Node groups that
use this node template will create nodes of a type that matches
these properties. Only one of nodeTypeFlexibility and nodeType can
be specified. *)

type server_binding = {
  type_ : string prop; [@key "type"]
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

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_node_template = {
  cpu_overcommit_type : string prop option; [@option]
      (** CPU overcommit. Default value: NONE Possible values: [ENABLED, NONE] *)
  description : string prop option; [@option]
      (** An optional textual description of the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** Name of the resource. *)
  node_affinity_labels : (string * string prop) list option;
      [@option]
      (** Labels to use for node affinity, which will be used in
instance scheduling. *)
  node_type : string prop option; [@option]
      (** Node type to use for nodes group that are created from this template.
Only one of nodeTypeFlexibility and nodeType can be specified. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Region where nodes using the node template will be created.
If it is not provided, the provider region is used. *)
  node_type_flexibility : node_type_flexibility list;
  server_binding : server_binding list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_node_template *)

let node_type_flexibility ?cpus ?memory () : node_type_flexibility =
  { cpus; memory }

let server_binding ~type_ () : server_binding = { type_ }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_node_template ?cpu_overcommit_type ?description
    ?id ?name ?node_affinity_labels ?node_type ?project ?region
    ?timeouts ~node_type_flexibility ~server_binding () :
    google_compute_node_template =
  {
    cpu_overcommit_type;
    description;
    id;
    name;
    node_affinity_labels;
    node_type;
    project;
    region;
    node_type_flexibility;
    server_binding;
    timeouts;
  }

type t = {
  cpu_overcommit_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  node_affinity_labels : (string * string) list prop;
  node_type : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let register ?tf_module ?cpu_overcommit_type ?description ?id ?name
    ?node_affinity_labels ?node_type ?project ?region ?timeouts
    ~node_type_flexibility ~server_binding __resource_id =
  let __resource_type = "google_compute_node_template" in
  let __resource =
    google_compute_node_template ?cpu_overcommit_type ?description
      ?id ?name ?node_affinity_labels ?node_type ?project ?region
      ?timeouts ~node_type_flexibility ~server_binding ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_node_template __resource);
  let __resource_attributes =
    ({
       cpu_overcommit_type =
         Prop.computed __resource_type __resource_id
           "cpu_overcommit_type";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       node_affinity_labels =
         Prop.computed __resource_type __resource_id
           "node_affinity_labels";
       node_type =
         Prop.computed __resource_type __resource_id "node_type";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
     }
      : t)
  in
  __resource_attributes
