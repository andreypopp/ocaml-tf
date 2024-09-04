(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_workflows_workflow

val google_workflows_workflow :
  ?call_log_level:string prop ->
  ?crypto_key_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?service_account:string prop ->
  ?source_contents:string prop ->
  ?user_env_vars:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  unit ->
  google_workflows_workflow

val yojson_of_google_workflows_workflow :
  google_workflows_workflow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  call_log_level : string prop;
  create_time : string prop;
  crypto_key_name : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  name_prefix : string prop;
  project : string prop;
  region : string prop;
  revision_id : string prop;
  service_account : string prop;
  source_contents : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
  user_env_vars : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?call_log_level:string prop ->
  ?crypto_key_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?service_account:string prop ->
  ?source_contents:string prop ->
  ?user_env_vars:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?call_log_level:string prop ->
  ?crypto_key_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?service_account:string prop ->
  ?source_contents:string prop ->
  ?user_env_vars:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
