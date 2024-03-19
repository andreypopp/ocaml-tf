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

type google_filestore_snapshot

val google_filestore_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_filestore_snapshot

val yojson_of_google_filestore_snapshot :
  google_filestore_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  filesystem_used_bytes : string prop;
  id : string prop;
  instance : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t
