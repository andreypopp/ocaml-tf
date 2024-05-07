(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type anthos_cluster

val anthos_cluster :
  ?membership:string prop -> unit -> anthos_cluster

type execution_configs

val execution_configs :
  ?artifact_storage:string prop ->
  ?execution_timeout:string prop ->
  ?service_account:string prop ->
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
  ?annotations:(string * string prop) list ->
  ?deploy_parameters:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?require_approval:bool prop ->
  ?anthos_cluster:anthos_cluster list ->
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
  annotations : (string * string) list prop;
  create_time : string prop;
  deploy_parameters : (string * string) list prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  require_approval : bool prop;
  target_id : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?deploy_parameters:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?require_approval:bool prop ->
  ?anthos_cluster:anthos_cluster list ->
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
  ?annotations:(string * string prop) list ->
  ?deploy_parameters:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?require_approval:bool prop ->
  ?anthos_cluster:anthos_cluster list ->
  ?execution_configs:execution_configs list ->
  ?gke:gke list ->
  ?multi_target:multi_target list ->
  ?run:run list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
