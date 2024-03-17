(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuildv2_repository__timeouts
type google_cloudbuildv2_repository

type t = private {
  annotations : (string * string) list prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent_connection : string prop;
  project : string prop;
  remote_uri : string prop;
  update_time : string prop;
}

val google_cloudbuildv2_repository :
  ?annotations:(string * string prop) list ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:google_cloudbuildv2_repository__timeouts ->
  name:string prop ->
  parent_connection:string prop ->
  remote_uri:string prop ->
  string ->
  t
