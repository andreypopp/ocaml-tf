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

type google_kms_crypto_key_iam_member

val google_kms_crypto_key_iam_member :
  ?id:string prop ->
  crypto_key_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_kms_crypto_key_iam_member

val yojson_of_google_kms_crypto_key_iam_member :
  google_kms_crypto_key_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  crypto_key_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
