(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_beyondcorp_app_connection__application_endpoint = {
  host : string;
      (** Hostname or IP address of the remote application endpoint. *)
  port : float;  (** Port of the remote application endpoint. *)
}
[@@deriving yojson_of]
(** Address of the remote application endpoint for the BeyondCorp AppConnection. *)

type google_beyondcorp_app_connection__gateway = {
  app_gateway : string;
      (** AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}. *)
  ingress_port : float;
      (** Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443. *)
  type_ : string option; [@option] [@key "type"]
      (** The type of hosting used by the gateway. Refer to
https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
for a list of possible values. *)
  uri : string;  (** Server-defined URI for this resource. *)
}
[@@deriving yojson_of]
(** Gateway used by the AppConnection. *)

type google_beyondcorp_app_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_beyondcorp_app_connection__timeouts *)

type google_beyondcorp_app_connection = {
  connectors : string list option; [@option]
      (** List of AppConnectors that are authorised to be associated with this AppConnection *)
  display_name : string option; [@option]
      (** An arbitrary user-provided name for the AppConnection. *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** ID of the AppConnection. *)
  region : string option; [@option]
      (** The region of the AppConnection. *)
  type_ : string option; [@option] [@key "type"]
      (** The type of network connectivity used by the AppConnection. Refer to
https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
for a list of possible values. *)
  application_endpoint :
    google_beyondcorp_app_connection__application_endpoint list;
  gateway : google_beyondcorp_app_connection__gateway list;
  timeouts : google_beyondcorp_app_connection__timeouts option;
}
[@@deriving yojson_of]
(** google_beyondcorp_app_connection *)

let google_beyondcorp_app_connection ?connectors ?display_name
    ?labels ?region ?type_ ?timeouts ~name ~application_endpoint
    ~gateway __resource_id =
  let __resource_type = "google_beyondcorp_app_connection" in
  let __resource =
    {
      connectors;
      display_name;
      labels;
      name;
      region;
      type_;
      application_endpoint;
      gateway;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_beyondcorp_app_connection __resource);
  ()
