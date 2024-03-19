(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type google_service_account

val google_service_account :
  ?create_ignore_already_exists:bool prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  unit ->
  google_service_account

val yojson_of_google_service_account : google_service_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  create_ignore_already_exists : bool prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  email : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  unique_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_ignore_already_exists:bool prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  string ->
  t
