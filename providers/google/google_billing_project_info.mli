(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_billing_project_info

val google_billing_project_info :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  billing_account:string prop ->
  unit ->
  google_billing_project_info

val yojson_of_google_billing_project_info :
  google_billing_project_info -> json

(** RESOURCE REGISTRATION *)

type t = private {
  billing_account : string prop;
  id : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  billing_account:string prop ->
  string ->
  t
