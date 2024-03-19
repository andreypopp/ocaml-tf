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

type google_billing_account_iam_binding

val google_billing_account_iam_binding :
  ?id:string prop ->
  billing_account_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_billing_account_iam_binding

val yojson_of_google_billing_account_iam_binding :
  google_billing_account_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  billing_account_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  billing_account_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
