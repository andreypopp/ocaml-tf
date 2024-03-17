(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_runtime_iam_binding__condition
type google_notebooks_runtime_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  runtime_name : string prop;
}

val google_notebooks_runtime_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  members:string prop list ->
  role:string prop ->
  runtime_name:string prop ->
  condition:google_notebooks_runtime_iam_binding__condition list ->
  string ->
  t
