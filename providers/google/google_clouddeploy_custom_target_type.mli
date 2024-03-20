(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_actions__include_skaffold_modules__git

val custom_actions__include_skaffold_modules__git :
  ?path:string prop ->
  ?ref:string prop ->
  repo:string prop ->
  unit ->
  custom_actions__include_skaffold_modules__git

type custom_actions__include_skaffold_modules__google_cloud_storage

val custom_actions__include_skaffold_modules__google_cloud_storage :
  ?path:string prop ->
  source:string prop ->
  unit ->
  custom_actions__include_skaffold_modules__google_cloud_storage

type custom_actions__include_skaffold_modules

val custom_actions__include_skaffold_modules :
  ?configs:string prop list ->
  git:custom_actions__include_skaffold_modules__git list ->
  google_cloud_storage:
    custom_actions__include_skaffold_modules__google_cloud_storage
    list ->
  unit ->
  custom_actions__include_skaffold_modules

type custom_actions

val custom_actions :
  ?render_action:string prop ->
  deploy_action:string prop ->
  include_skaffold_modules:
    custom_actions__include_skaffold_modules list ->
  unit ->
  custom_actions

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_clouddeploy_custom_target_type

val google_clouddeploy_custom_target_type :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  custom_actions:custom_actions list ->
  unit ->
  google_clouddeploy_custom_target_type

val yojson_of_google_clouddeploy_custom_target_type :
  google_clouddeploy_custom_target_type -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  custom_actions:custom_actions list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  custom_actions:custom_actions list ->
  string ->
  t Tf_core.resource
