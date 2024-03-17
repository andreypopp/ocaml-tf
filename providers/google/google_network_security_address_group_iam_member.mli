(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_security_address_group_iam_member__condition
type google_network_security_address_group_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  role : string prop;
}

val google_network_security_address_group_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  condition:
    google_network_security_address_group_iam_member__condition list ->
  string ->
  t
