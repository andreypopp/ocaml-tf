(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_account

val aws_organizations_account :
  ?close_on_deletion:bool prop ->
  ?create_govcloud:bool prop ->
  ?iam_user_access_to_billing:string prop ->
  ?id:string prop ->
  ?parent_id:string prop ->
  ?role_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  email:string prop ->
  name:string prop ->
  unit ->
  aws_organizations_account

val yojson_of_aws_organizations_account :
  aws_organizations_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  close_on_deletion : bool prop;
  create_govcloud : bool prop;
  email : string prop;
  govcloud_id : string prop;
  iam_user_access_to_billing : string prop;
  id : string prop;
  joined_method : string prop;
  joined_timestamp : string prop;
  name : string prop;
  parent_id : string prop;
  role_name : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?close_on_deletion:bool prop ->
  ?create_govcloud:bool prop ->
  ?iam_user_access_to_billing:string prop ->
  ?id:string prop ->
  ?parent_id:string prop ->
  ?role_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  email:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?close_on_deletion:bool prop ->
  ?create_govcloud:bool prop ->
  ?iam_user_access_to_billing:string prop ->
  ?id:string prop ->
  ?parent_id:string prop ->
  ?role_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  email:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
