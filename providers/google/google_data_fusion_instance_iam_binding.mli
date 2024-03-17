(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_fusion_instance_iam_binding__condition
type google_data_fusion_instance_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

val google_data_fusion_instance_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  members:string prop list ->
  name:string prop ->
  role:string prop ->
  condition:google_data_fusion_instance_iam_binding__condition list ->
  string ->
  t
