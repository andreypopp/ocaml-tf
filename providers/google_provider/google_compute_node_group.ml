(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_node_group__autoscaling_policy = {
  max_nodes : float option; [@option]
      (** Maximum size of the node group. Set to a value less than or equal
to 100 and greater than or equal to min-nodes. *)
  min_nodes : float option; [@option]
      (** Minimum size of the node group. Must be less
than or equal to max-nodes. The default value is 0. *)
  mode : string option; [@option]
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

type google_compute_node_group__maintenance_window = {
  start_time : string;
      (** instances.start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid. *)
}
[@@deriving yojson_of]
(** contains properties for the timeframe of maintenance *)

type google_compute_node_group__share_settings__project_map = {
  id : string;  (** id *)
  project_id : string;
      (** The project id/number should be the same as the key of this project config in the project map. *)
}
[@@deriving yojson_of]
(** A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS. *)

type google_compute_node_group__share_settings = {
  share_type : string;
      (** Node group sharing type. Possible values: [ORGANIZATION, SPECIFIC_PROJECTS, LOCAL] *)
  project_map :
    google_compute_node_group__share_settings__project_map list;
}
[@@deriving yojson_of]
(** Share settings for the node group. *)

type google_compute_node_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_node_group__timeouts *)

type google_compute_node_group = {
  description : string option; [@option]
      (** An optional textual description of the resource. *)
  initial_size : float option; [@option]
      (** The initial number of nodes in the node group. One of 'initial_size' or 'autoscaling_policy' must be configured on resource creation. *)
  maintenance_policy : string option; [@option]
      (** Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. *)
  name : string option; [@option]  (** Name of the resource. *)
  node_template : string;
      (** The URL of the node template to which this node group belongs. *)
  autoscaling_policy :
    google_compute_node_group__autoscaling_policy list;
  maintenance_window :
    google_compute_node_group__maintenance_window list;
  share_settings : google_compute_node_group__share_settings list;
  timeouts : google_compute_node_group__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_node_group *)

let google_compute_node_group ?description ?initial_size
    ?maintenance_policy ?name ?timeouts ~node_template
    ~autoscaling_policy ~maintenance_window ~share_settings
    __resource_id =
  let __resource_type = "google_compute_node_group" in
  let __resource =
    {
      description;
      initial_size;
      maintenance_policy;
      name;
      node_template;
      autoscaling_policy;
      maintenance_window;
      share_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_node_group __resource);
  ()
