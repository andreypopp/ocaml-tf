(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_environment__node_config = {
  current_aggregate_node_count : string;
      (** The current total number of gateway nodes that each environment currently has across
all instances. *)
  max_node_count : string option; [@option]
      (** The maximum total number of gateway nodes that the is reserved for all instances that
has the specified environment. If not specified, the default is determined by the
recommended maximum number of nodes for that gateway. *)
  min_node_count : string option; [@option]
      (** The minimum total number of gateway nodes that the is reserved for all instances that
has the specified environment. If not specified, the default is determined by the
recommended minimum number of nodes for that gateway. *)
}
[@@deriving yojson_of]
(** NodeConfig for setting the min/max number of nodes associated with the environment. *)

type google_apigee_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_environment__timeouts *)

type google_apigee_environment = {
  description : string option; [@option]
      (** Description of the environment. *)
  display_name : string option; [@option]
      (** Display name of the environment. *)
  name : string;  (** The resource ID of the environment. *)
  org_id : string;
      (** The Apigee Organization associated with the Apigee environment,
in the format 'organizations/{{org_name}}'. *)
  node_config : google_apigee_environment__node_config list;
  timeouts : google_apigee_environment__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_environment *)

let google_apigee_environment ?description ?display_name ?timeouts
    ~name ~org_id ~node_config __resource_id =
  let __resource_type = "google_apigee_environment" in
  let __resource =
    {
      description;
      display_name;
      name;
      org_id;
      node_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_environment __resource);
  ()
