(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_lake__metastore = {
  service : string prop option; [@option]
      (** Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: `projects/{project_id}/locations/{location_id}/services/{service_id}` *)
}
[@@deriving yojson_of]
(** Optional. Settings to manage lake and Dataproc Metastore service instance association. *)

type google_dataplex_lake__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dataplex_lake__timeouts *)

type google_dataplex_lake__asset_status = {
  active_assets : float prop;  (** active_assets *)
  security_policy_applying_assets : float prop;
      (** security_policy_applying_assets *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_lake__metastore_status = {
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
  metastore : google_dataplex_lake__metastore list;
  timeouts : google_dataplex_lake__timeouts option;
}
[@@deriving yojson_of]
(** google_dataplex_lake *)

type t = {
  asset_status : google_dataplex_lake__asset_status list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  metastore_status :
    google_dataplex_lake__metastore_status list prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let google_dataplex_lake ?description ?display_name ?id ?labels
    ?project ?timeouts ~location ~name ~metastore __resource_id =
  let __resource_type = "google_dataplex_lake" in
  let __resource =
    ({
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
      : google_dataplex_lake)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_lake __resource);
  let __resource_attributes =
    ({
       asset_status =
         Prop.computed __resource_type __resource_id "asset_status";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       metastore_status =
         Prop.computed __resource_type __resource_id
           "metastore_status";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       service_account =
         Prop.computed __resource_type __resource_id
           "service_account";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
