(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_organization_iam_custom_role

val google_organization_iam_custom_role :
  ?description:string prop ->
  ?id:string prop ->
  ?stage:string prop ->
  org_id:string prop ->
  permissions:string prop list ->
  role_id:string prop ->
  title:string prop ->
  unit ->
  google_organization_iam_custom_role

val yojson_of_google_organization_iam_custom_role :
  google_organization_iam_custom_role -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?stage:string prop ->
  org_id:string prop ->
  permissions:string prop list ->
  role_id:string prop ->
  title:string prop ->
  string ->
  t
