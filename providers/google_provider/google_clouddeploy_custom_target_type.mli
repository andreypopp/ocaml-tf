(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules__git

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules__google_cloud_storage

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules

type google_clouddeploy_custom_target_type__custom_actions
type google_clouddeploy_custom_target_type__timeouts
type google_clouddeploy_custom_target_type

type t = private {
  annotations : (string * string) list prop;
  create_time : string prop;
  custom_target_type_id : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val google_clouddeploy_custom_target_type :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_clouddeploy_custom_target_type__timeouts ->
  location:string prop ->
  name:string prop ->
  custom_actions:
    google_clouddeploy_custom_target_type__custom_actions list ->
  string ->
  t
