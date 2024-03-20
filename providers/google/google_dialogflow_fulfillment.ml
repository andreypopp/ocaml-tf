(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?enabled ?id ?project ?timeouts ~display_name ~features
    ~generic_web_service __id =
  let __type = "google_dialogflow_fulfillment" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_fulfillment
        (google_dialogflow_fulfillment ?enabled ?id ?project
           ?timeouts ~display_name ~features ~generic_web_service ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?project ?timeouts ~display_name
    ~features ~generic_web_service __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?project ?timeouts ~display_name ~features
      ~generic_web_service __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
