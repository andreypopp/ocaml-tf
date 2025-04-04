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

type google_iam_workload_identity_pool

val google_iam_workload_identity_pool :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  workload_identity_pool_id:string prop ->
  unit ->
  google_iam_workload_identity_pool

val yojson_of_google_iam_workload_identity_pool :
  google_iam_workload_identity_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  workload_identity_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  workload_identity_pool_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  workload_identity_pool_id:string prop ->
  string ->
  t Tf_core.resource
