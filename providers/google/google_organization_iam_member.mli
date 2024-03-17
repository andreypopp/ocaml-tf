(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_organization_iam_member__condition
type google_organization_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  org_id : string prop;
  role : string prop;
}

val google_organization_iam_member :
  ?id:string prop ->
  member:string prop ->
  org_id:string prop ->
  role:string prop ->
  condition:google_organization_iam_member__condition list ->
  string ->
  t
