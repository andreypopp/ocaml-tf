(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dialogflow_cx_environment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_cx_environment__timeouts *)

type google_dialogflow_cx_environment__version_configs = {
  version : string prop;
      (** Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}. *)
}
[@@deriving yojson_of]
(** A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned. *)

type google_dialogflow_cx_environment = {
  description : string prop option; [@option]
      (** The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected. *)
  display_name : string prop;
      (** The human-readable name of the environment (unique in an agent). Limit of 64 characters. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop option; [@option]
      (** The Agent to create an Environment for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>. *)
  timeouts : google_dialogflow_cx_environment__timeouts option;
  version_configs :
    google_dialogflow_cx_environment__version_configs list;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_environment *)

let google_dialogflow_cx_environment ?description ?id ?parent
    ?timeouts ~display_name ~version_configs __resource_id =
  let __resource_type = "google_dialogflow_cx_environment" in
  let __resource =
    {
      description;
      display_name;
      id;
      parent;
      timeouts;
      version_configs;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_environment __resource);
  ()
