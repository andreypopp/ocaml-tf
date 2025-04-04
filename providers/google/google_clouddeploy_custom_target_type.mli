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

type custom_actions__include_skaffold_modules__google_cloud_build_repo

val custom_actions__include_skaffold_modules__google_cloud_build_repo :
  ?path:string prop ->
  ?ref:string prop ->
  repository:string prop ->
  unit ->
  custom_actions__include_skaffold_modules__google_cloud_build_repo

type custom_actions__include_skaffold_modules__google_cloud_storage

val custom_actions__include_skaffold_modules__google_cloud_storage :
  ?path:string prop ->
  source:string prop ->
  unit ->
  custom_actions__include_skaffold_modules__google_cloud_storage

type custom_actions__include_skaffold_modules

val custom_actions__include_skaffold_modules :
  ?configs:string prop list ->
  ?git:custom_actions__include_skaffold_modules__git list ->
  ?google_cloud_build_repo:
    custom_actions__include_skaffold_modules__google_cloud_build_repo
    list ->
  ?google_cloud_storage:
    custom_actions__include_skaffold_modules__google_cloud_storage
    list ->
  unit ->
  custom_actions__include_skaffold_modules

type custom_actions

val custom_actions :
  ?render_action:string prop ->
  ?include_skaffold_modules:
    custom_actions__include_skaffold_modules list ->
  deploy_action:string prop ->
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
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?custom_actions:custom_actions list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_clouddeploy_custom_target_type

val yojson_of_google_clouddeploy_custom_target_type :
  google_clouddeploy_custom_target_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  create_time : string prop;
  custom_target_type_id : string prop;
  description : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?custom_actions:custom_actions list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?custom_actions:custom_actions list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
