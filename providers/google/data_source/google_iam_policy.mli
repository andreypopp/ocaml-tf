(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type audit_config__audit_log_configs

val audit_config__audit_log_configs :
  ?exempted_members:string prop list ->
  log_type:string prop ->
  unit ->
  audit_config__audit_log_configs

type audit_config

val audit_config :
  service:string prop ->
  audit_log_configs:audit_config__audit_log_configs list ->
  unit ->
  audit_config

type binding__condition

val binding__condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  binding__condition

type binding

val binding :
  ?condition:binding__condition list ->
  members:string prop list ->
  role:string prop ->
  unit ->
  binding

type google_iam_policy

val google_iam_policy :
  ?id:string prop ->
  audit_config:audit_config list ->
  binding:binding list ->
  unit ->
  google_iam_policy

val yojson_of_google_iam_policy : google_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  audit_config:audit_config list ->
  binding:binding list ->
  string ->
  t

val make :
  ?id:string prop ->
  audit_config:audit_config list ->
  binding:binding list ->
  string ->
  t Tf_core.resource
