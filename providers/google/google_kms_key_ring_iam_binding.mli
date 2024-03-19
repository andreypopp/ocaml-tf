(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_kms_key_ring_iam_binding

val google_kms_key_ring_iam_binding :
  ?id:string prop ->
  key_ring_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_kms_key_ring_iam_binding

val yojson_of_google_kms_key_ring_iam_binding :
  google_kms_key_ring_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  key_ring_id : string prop;
  members : string list prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key_ring_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
