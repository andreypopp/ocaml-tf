(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type features = {
  type_ : string prop; [@key "type"]
      (** The type of the feature that enabled for fulfillment.
* SMALLTALK: Fulfillment is enabled for SmallTalk. Possible values: [SMALLTALK] *)
}
[@@deriving yojson_of]
(** The field defines whether the fulfillment is enabled for certain features. *)

type generic_web_service = {
  password : string prop option; [@option]
      (** The password for HTTP Basic authentication. *)
  request_headers : (string * string prop) list option; [@option]
      (** The HTTP request headers to send together with fulfillment requests. *)
  uri : string prop;
      (** The fulfillment URI for receiving POST requests. It must use https protocol. *)
  username : string prop option; [@option]
      (** The user name for HTTP Basic authentication. *)
}
[@@deriving yojson_of]
(** Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dialogflow_fulfillment = {
  display_name : string prop;
      (** The human-readable name of the fulfillment, unique within the agent. *)
  enabled : bool prop option; [@option]
      (** Whether fulfillment is enabled. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  features : features list;
  generic_web_service : generic_web_service list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_fulfillment *)

let features ~type_ () : features = { type_ }

let generic_web_service ?password ?request_headers ?username ~uri ()
    : generic_web_service =
  { password; request_headers; uri; username }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_fulfillment ?enabled ?id ?project ?timeouts
    ~display_name ~features ~generic_web_service () :
    google_dialogflow_fulfillment =
  {
    display_name;
    enabled;
    id;
    project;
    features;
    generic_web_service;
    timeouts;
  }

type t = {
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let register ?tf_module ?enabled ?id ?project ?timeouts ~display_name
    ~features ~generic_web_service __resource_id =
  let __resource_type = "google_dialogflow_fulfillment" in
  let __resource =
    google_dialogflow_fulfillment ?enabled ?id ?project ?timeouts
      ~display_name ~features ~generic_web_service ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_fulfillment __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
