(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_fusion_instance_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

val google_data_fusion_instance_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  policy_data:string prop ->
  string ->
  t
