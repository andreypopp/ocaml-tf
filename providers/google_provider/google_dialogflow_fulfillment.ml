(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dialogflow_fulfillment__features = {
  type_ : string; [@key "type"]
      (** The type of the feature that enabled for fulfillment.
* SMALLTALK: Fulfillment is enabled for SmallTalk. Possible values: [SMALLTALK] *)
}
[@@deriving yojson_of]
(** The field defines whether the fulfillment is enabled for certain features. *)

type google_dialogflow_fulfillment__generic_web_service = {
  password : string option; [@option]
      (** The password for HTTP Basic authentication. *)
  request_headers : (string * string) list option; [@option]
      (** The HTTP request headers to send together with fulfillment requests. *)
  uri : string;
      (** The fulfillment URI for receiving POST requests. It must use https protocol. *)
  username : string option; [@option]
      (** The user name for HTTP Basic authentication. *)
}
[@@deriving yojson_of]
(** Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. *)

type google_dialogflow_fulfillment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_fulfillment__timeouts *)

type google_dialogflow_fulfillment = {
  display_name : string;
      (** The human-readable name of the fulfillment, unique within the agent. *)
  enabled : bool option; [@option]
      (** Whether fulfillment is enabled. *)
  features : google_dialogflow_fulfillment__features list;
  generic_web_service :
    google_dialogflow_fulfillment__generic_web_service list;
  timeouts : google_dialogflow_fulfillment__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_fulfillment *)

let google_dialogflow_fulfillment ?enabled ?timeouts ~display_name
    ~features ~generic_web_service __resource_id =
  let __resource_type = "google_dialogflow_fulfillment" in
  let __resource =
    {
      display_name;
      enabled;
      features;
      generic_web_service;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_fulfillment __resource);
  ()
