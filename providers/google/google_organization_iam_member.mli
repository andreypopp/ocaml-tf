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

type google_organization_iam_member

val google_organization_iam_member :
  ?id:string prop ->
  member:string prop ->
  org_id:string prop ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_organization_iam_member

val yojson_of_google_organization_iam_member :
  google_organization_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  org_id : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  member:string prop ->
  org_id:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
