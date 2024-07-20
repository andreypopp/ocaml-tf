(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloud_kms_config

val cloud_kms_config :
  ?key_version:string prop ->
  ?kms_project_id:string prop ->
  key:string prop ->
  kms_location:string prop ->
  kms_ring:string prop ->
  unit ->
  cloud_kms_config

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_integrations_client

val google_integrations_client :
  ?create_sample_integrations:bool prop ->
  ?create_sample_workflows:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?provision_gmek:bool prop ->
  ?run_as_service_account:string prop ->
  ?cloud_kms_config:cloud_kms_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  unit ->
  google_integrations_client

val yojson_of_google_integrations_client :
  google_integrations_client -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_sample_integrations : bool prop;
  create_sample_workflows : bool prop;
  id : string prop;
  location : string prop;
  project : string prop;
  provision_gmek : bool prop;
  run_as_service_account : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_sample_integrations:bool prop ->
  ?create_sample_workflows:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?provision_gmek:bool prop ->
  ?run_as_service_account:string prop ->
  ?cloud_kms_config:cloud_kms_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  string ->
  t

val make :
  ?create_sample_integrations:bool prop ->
  ?create_sample_workflows:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?provision_gmek:bool prop ->
  ?run_as_service_account:string prop ->
  ?cloud_kms_config:cloud_kms_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  string ->
  t Tf_core.resource
