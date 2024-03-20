(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?connectors ?display_name ?id ?labels ?project ?region
    ?type_ ?timeouts ~name ~application_endpoint ~gateway __id =
  let __type = "google_beyondcorp_app_connection" in
  let __attrs =
    ({
       connectors = Prop.computed __type __id "connectors";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_beyondcorp_app_connection
        (google_beyondcorp_app_connection ?connectors ?display_name
           ?id ?labels ?project ?region ?type_ ?timeouts ~name
           ~application_endpoint ~gateway ());
    attrs = __attrs;
  }

let register ?tf_module ?connectors ?display_name ?id ?labels
    ?project ?region ?type_ ?timeouts ~name ~application_endpoint
    ~gateway __id =
  let (r : _ Tf_core.resource) =
    make ?connectors ?display_name ?id ?labels ?project ?region
      ?type_ ?timeouts ~name ~application_endpoint ~gateway __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
