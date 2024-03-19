(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type access_restrictions__allowed_services

val access_restrictions__allowed_services :
  ?domain:string prop ->
  unit ->
  access_restrictions__allowed_services

type access_restrictions

val access_restrictions :
  ?disable_programmatic_signin:bool prop ->
  allowed_services:access_restrictions__allowed_services list ->
  unit ->
  access_restrictions

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_iam_workforce_pool

val google_iam_workforce_pool :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?session_duration:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  workforce_pool_id:string prop ->
  access_restrictions:access_restrictions list ->
  unit ->
  google_iam_workforce_pool

val yojson_of_google_iam_workforce_pool :
  google_iam_workforce_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  session_duration : string prop;
  state : string prop;
  workforce_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?session_duration:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  workforce_pool_id:string prop ->
  access_restrictions:access_restrictions list ->
  string ->
  t
