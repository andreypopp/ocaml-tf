(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_iam_policy

type t = private {
  etag : string prop;
  folder : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_folder_iam_policy :
  ?id:string prop ->
  folder:string prop ->
  policy_data:string prop ->
  string ->
  t
