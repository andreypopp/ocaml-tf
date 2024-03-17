(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_filestore_snapshot__timeouts
type google_filestore_snapshot

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

val google_filestore_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_filestore_snapshot__timeouts ->
  instance:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t
