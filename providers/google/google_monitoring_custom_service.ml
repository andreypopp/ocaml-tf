(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type telemetry = {
  resource_name : string prop option; [@option]
      (** The full name of the resource that defines this service.
Formatted as described in
https://cloud.google.com/apis/design/resource_names. *)
}
[@@deriving yojson_of]
(** Configuration for how to query telemetry on a Service. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_monitoring_custom_service = {
  display_name : string prop option; [@option]
      (** Name used for UI elements listing this Service. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  service_id : string prop option; [@option]
      (** An optional service ID to use. If not given, the server will generate a
service ID. *)
  user_labels : (string * string prop) list option; [@option]
      (** Labels which have been used to annotate the service. Label keys must start
with a letter. Label keys and values may contain lowercase letters,
numbers, underscores, and dashes. Label keys and values have a maximum
length of 63 characters, and must be less than 128 bytes in size. Up to 64
label entries may be stored. For labels which do not have a semantic value,
the empty string may be supplied for the label value. *)
  telemetry : telemetry list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_custom_service *)

let telemetry ?resource_name () : telemetry = { resource_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_custom_service ?display_name ?id ?project
    ?service_id ?user_labels ?timeouts ~telemetry () :
    google_monitoring_custom_service =
  {
    display_name;
    id;
    project;
    service_id;
    user_labels;
    telemetry;
    timeouts;
  }

type t = {
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  user_labels : (string * string) list prop;
}

let make ?display_name ?id ?project ?service_id ?user_labels
    ?timeouts ~telemetry __id =
  let __type = "google_monitoring_custom_service" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_id = Prop.computed __type __id "service_id";
       user_labels = Prop.computed __type __id "user_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_custom_service
        (google_monitoring_custom_service ?display_name ?id ?project
           ?service_id ?user_labels ?timeouts ~telemetry ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project ?service_id
    ?user_labels ?timeouts ~telemetry __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ?service_id ?user_labels
      ?timeouts ~telemetry __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
