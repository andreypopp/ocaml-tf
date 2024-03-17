(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_organization_iam_custom_role

type t = private {
  deleted : bool prop;
  description : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
  permissions : string list prop;
  role_id : string prop;
  stage : string prop;
  title : string prop;
}

val google_organization_iam_custom_role :
  ?description:string prop ->
  ?id:string prop ->
  ?stage:string prop ->
  org_id:string prop ->
  permissions:string prop list ->
  role_id:string prop ->
  title:string prop ->
  string ->
  t
