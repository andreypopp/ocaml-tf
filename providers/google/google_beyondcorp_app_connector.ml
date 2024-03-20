(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type principal_info__service_account = {
  email : string prop;  (** Email address of the service account. *)
}
[@@deriving yojson_of]
(** ServiceAccount represents a GCP service account. *)

type principal_info = {
  service_account : principal_info__service_account list;
}
[@@deriving yojson_of]
(** Principal information about the Identity of the AppConnector. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_beyondcorp_app_connector = {
  display_name : string prop option; [@option]
      (** An arbitrary user-provided name for the AppConnector. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** ID of the AppConnector. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the AppConnector. *)
  principal_info : principal_info list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_beyondcorp_app_connector *)

let principal_info__service_account ~email () :
    principal_info__service_account =
  { email }

let principal_info ~service_account () : principal_info =
  { service_account }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_beyondcorp_app_connector ?display_name ?id ?labels
    ?project ?region ?timeouts ~name ~principal_info () :
    google_beyondcorp_app_connector =
  {
    display_name;
    id;
    labels;
    name;
    project;
    region;
    principal_info;
    timeouts;
  }

type t = {
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?display_name ?id ?labels ?project ?region ?timeouts ~name
    ~principal_info __id =
  let __type = "google_beyondcorp_app_connector" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_beyondcorp_app_connector
        (google_beyondcorp_app_connector ?display_name ?id ?labels
           ?project ?region ?timeouts ~name ~principal_info ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?labels ?project ?region
    ?timeouts ~name ~principal_info __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?labels ?project ?region ?timeouts ~name
      ~principal_info __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
