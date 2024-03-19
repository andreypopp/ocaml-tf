(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_network_security_address_group_iam_policy

val google_network_security_address_group_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  policy_data:string prop ->
  unit ->
  google_network_security_address_group_iam_policy

val yojson_of_google_network_security_address_group_iam_policy :
  google_network_security_address_group_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  policy_data:string prop ->
  string ->
  t
