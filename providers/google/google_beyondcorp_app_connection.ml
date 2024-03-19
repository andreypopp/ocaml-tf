(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type application_endpoint = {
  host : string prop;
      (** Hostname or IP address of the remote application endpoint. *)
  port : float prop;  (** Port of the remote application endpoint. *)
}
[@@deriving yojson_of]
(** Address of the remote application endpoint for the BeyondCorp AppConnection. *)

type gateway = {
  app_gateway : string prop;
      (** AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of hosting used by the gateway. Refer to
https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
for a list of possible values. *)
}
[@@deriving yojson_of]
(** Gateway used by the AppConnection. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_beyondcorp_app_connection = {
  connectors : string prop list option; [@option]
      (** List of AppConnectors that are authorised to be associated with this AppConnection *)
  display_name : string prop option; [@option]
      (** An arbitrary user-provided name for the AppConnection. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** ID of the AppConnection. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the AppConnection. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of network connectivity used by the AppConnection. Refer to
https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
for a list of possible values. *)
  application_endpoint : application_endpoint list;
  gateway : gateway list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_beyondcorp_app_connection *)

let application_endpoint ~host ~port () : application_endpoint =
  { host; port }

let gateway ?type_ ~app_gateway () : gateway = { app_gateway; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_beyondcorp_app_connection ?connectors ?display_name ?id
    ?labels ?project ?region ?type_ ?timeouts ~name
    ~application_endpoint ~gateway () :
    google_beyondcorp_app_connection =
  {
    connectors;
    display_name;
    id;
    labels;
    name;
    project;
    region;
    type_;
    application_endpoint;
    gateway;
    timeouts;
  }

type t = {
  connectors : string list prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?connectors ?display_name ?id ?labels
    ?project ?region ?type_ ?timeouts ~name ~application_endpoint
    ~gateway __resource_id =
  let __resource_type = "google_beyondcorp_app_connection" in
  let __resource =
    google_beyondcorp_app_connection ?connectors ?display_name ?id
      ?labels ?project ?region ?type_ ?timeouts ~name
      ~application_endpoint ~gateway ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_beyondcorp_app_connection __resource);
  let __resource_attributes =
    ({
       connectors =
         Prop.computed __resource_type __resource_id "connectors";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
