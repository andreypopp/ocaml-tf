(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_billing_account

val google_billing_account :
  ?billing_account:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?lookup_projects:bool prop ->
  ?open_:bool prop ->
  unit ->
  google_billing_account

val yojson_of_google_billing_account : google_billing_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  billing_account : string prop;
  display_name : string prop;
  id : string prop;
  lookup_projects : bool prop;
  name : string prop;
  open_ : bool prop;
  project_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?billing_account:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?lookup_projects:bool prop ->
  ?open_:bool prop ->
  string ->
  t

val make :
  ?billing_account:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?lookup_projects:bool prop ->
  ?open_:bool prop ->
  string ->
  t Tf_core.resource
