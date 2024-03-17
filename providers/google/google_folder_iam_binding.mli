(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_iam_binding__condition
type google_folder_iam_binding

type t = private {
  etag : string prop;
  folder : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

val google_folder_iam_binding :
  ?id:string prop ->
  folder:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_folder_iam_binding__condition list ->
  string ->
  t
