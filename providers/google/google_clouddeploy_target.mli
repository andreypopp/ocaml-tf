(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type anthos_cluster

val anthos_cluster :
  ?membership:string prop -> unit -> anthos_cluster

type custom_target

val custom_target :
  custom_target_type:string prop -> unit -> custom_target

type execution_configs

val execution_configs :
  ?artifact_storage:string prop ->
  ?execution_timeout:string prop ->
  ?service_account:string prop ->
  ?verbose:bool prop ->
  ?worker_pool:string prop ->
  usages:string prop list ->
  unit ->
  execution_configs

type gke

val gke :
  ?cluster:string prop -> ?internal_ip:bool prop -> unit -> gke

type multi_target

val multi_target :
  target_ids:string prop list -> unit -> multi_target

type run

val run : location:string prop -> unit -> run

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_clouddeploy_target

val google_clouddeploy_target :
  ?annotations:string prop Tf_core.assoc ->
  ?deploy_parameters:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?require_approval:bool prop ->
  ?anthos_cluster:anthos_cluster list ->
  ?custom_target:custom_target list ->
  ?execution_configs:execution_configs list ->
  ?gke:gke list ->
  ?multi_target:multi_target list ->
  ?run:run list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_clouddeploy_target

val yojson_of_google_clouddeploy_target :
  google_clouddeploy_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  create_time : string prop;
  deploy_parameters : string Tf_core.assoc prop;
  description : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  require_approval : bool prop;
  target_id : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?deploy_parameters:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?require_approval:bool prop ->
  ?anthos_cluster:anthos_cluster list ->
  ?custom_target:custom_target list ->
  ?execution_configs:execution_configs list ->
  ?gke:gke list ->
  ?multi_target:multi_target list ->
  ?run:run list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?deploy_parameters:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?require_approval:bool prop ->
  ?anthos_cluster:anthos_cluster list ->
  ?custom_target:custom_target list ->
  ?execution_configs:execution_configs list ->
  ?gke:gke list ->
  ?multi_target:multi_target list ->
  ?run:run list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
