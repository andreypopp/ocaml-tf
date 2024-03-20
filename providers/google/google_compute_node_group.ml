(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscaling_policy = {
  max_nodes : float prop option; [@option]
      (** Maximum size of the node group. Set to a value less than or equal
to 100 and greater than or equal to min-nodes. *)
  min_nodes : float prop option; [@option]
      (** Minimum size of the node group. Must be less
than or equal to max-nodes. The default value is 0. *)
  mode : string prop option; [@option]
      (** The autoscaling mode. Set to one of the following:
  - OFF: Disables the autoscaler.
  - ON: Enables scaling in and scaling out.
  - ONLY_SCALE_OUT: Enables only scaling out.
  You must use this mode if your node groups are configured to
  restart their hosted VMs on minimal servers. Possible values: [OFF, ON, ONLY_SCALE_OUT] *)
}
[@@deriving yojson_of]
(** If you use sole-tenant nodes for your workloads, you can use the node
group autoscaler to automatically manage the sizes of your node groups.

One of 'initial_size' or 'autoscaling_policy' must be configured on resource creation. *)

type maintenance_window = {
  start_time : string prop;
      (** instances.start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid. *)
}
[@@deriving yojson_of]
(** contains properties for the timeframe of maintenance *)

type share_settings__project_map = {
  id : string prop;  (** id *)
  project_id : string prop;
      (** The project id/number should be the same as the key of this project config in the project map. *)
}
[@@deriving yojson_of]
(** A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS. *)

type share_settings = {
  share_type : string prop;
      (** Node group sharing type. Possible values: [ORGANIZATION, SPECIFIC_PROJECTS, LOCAL] *)
  project_map : share_settings__project_map list;
}
[@@deriving yojson_of]
(** Share settings for the node group. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_node_group = {
  description : string prop option; [@option]
      (** An optional textual description of the resource. *)
  id : string prop option; [@option]  (** id *)
  initial_size : float prop option; [@option]
      (** The initial number of nodes in the node group. One of 'initial_size' or 'autoscaling_policy' must be configured on resource creation. *)
  maintenance_policy : string prop option; [@option]
      (** Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. *)
  name : string prop option; [@option]  (** Name of the resource. *)
  node_template : string prop;
      (** The URL of the node template to which this node group belongs. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** Zone where this node group is located *)
  autoscaling_policy : autoscaling_policy list;
  maintenance_window : maintenance_window list;
  share_settings : share_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_node_group *)

let autoscaling_policy ?max_nodes ?min_nodes ?mode () :
    autoscaling_policy =
  { max_nodes; min_nodes; mode }

let maintenance_window ~start_time () : maintenance_window =
  { start_time }

let share_settings__project_map ~id ~project_id () :
    share_settings__project_map =
  { id; project_id }

let share_settings ~share_type ~project_map () : share_settings =
  { share_type; project_map }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_node_group ?description ?id ?initial_size
    ?maintenance_policy ?name ?project ?zone ?timeouts ~node_template
    ~autoscaling_policy ~maintenance_window ~share_settings () :
    google_compute_node_group =
  {
    description;
    id;
    initial_size;
    maintenance_policy;
    name;
    node_template;
    project;
    zone;
    autoscaling_policy;
    maintenance_window;
    share_settings;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  initial_size : float prop;
  maintenance_policy : string prop;
  name : string prop;
  node_template : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  zone : string prop;
}

let make ?description ?id ?initial_size ?maintenance_policy ?name
    ?project ?zone ?timeouts ~node_template ~autoscaling_policy
    ~maintenance_window ~share_settings __id =
  let __type = "google_compute_node_group" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       initial_size = Prop.computed __type __id "initial_size";
       maintenance_policy =
         Prop.computed __type __id "maintenance_policy";
       name = Prop.computed __type __id "name";
       node_template = Prop.computed __type __id "node_template";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_node_group
        (google_compute_node_group ?description ?id ?initial_size
           ?maintenance_policy ?name ?project ?zone ?timeouts
           ~node_template ~autoscaling_policy ~maintenance_window
           ~share_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?initial_size
    ?maintenance_policy ?name ?project ?zone ?timeouts ~node_template
    ~autoscaling_policy ~maintenance_window ~share_settings __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?initial_size ?maintenance_policy ?name
      ?project ?zone ?timeouts ~node_template ~autoscaling_policy
      ~maintenance_window ~share_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
