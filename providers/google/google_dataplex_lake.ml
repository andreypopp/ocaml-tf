(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metastore = {
  service : string prop option; [@option]
      (** Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: `projects/{project_id}/locations/{location_id}/services/{service_id}` *)
}
[@@deriving yojson_of]
(** Optional. Settings to manage lake and Dataproc Metastore service instance association. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type asset_status = {
  active_assets : float prop;  (** active_assets *)
  security_policy_applying_assets : float prop;
      (** security_policy_applying_assets *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type metastore_status = {
  endpoint : string prop;  (** endpoint *)
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_lake = {
  description : string prop option; [@option]
      (** Optional. Description of the lake. *)
  display_name : string prop option; [@option]
      (** Optional. User friendly display name. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Optional. User-defined labels for the lake.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of the lake. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  metastore : metastore list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dataplex_lake *)

let metastore ?service () : metastore = { service }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataplex_lake ?description ?display_name ?id ?labels
    ?project ?timeouts ~location ~name ~metastore () :
    google_dataplex_lake =
  {
    description;
    display_name;
    id;
    labels;
    location;
    name;
    project;
    metastore;
    timeouts;
  }

type t = {
  asset_status : asset_status list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  metastore_status : metastore_status list prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?labels ?project ?timeouts
    ~location ~name ~metastore __id =
  let __type = "google_dataplex_lake" in
  let __attrs =
    ({
       asset_status = Prop.computed __type __id "asset_status";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       metastore_status =
         Prop.computed __type __id "metastore_status";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataplex_lake
        (google_dataplex_lake ?description ?display_name ?id ?labels
           ?project ?timeouts ~location ~name ~metastore ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?labels
    ?project ?timeouts ~location ~name ~metastore __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?labels ?project ?timeouts
      ~location ~name ~metastore __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
