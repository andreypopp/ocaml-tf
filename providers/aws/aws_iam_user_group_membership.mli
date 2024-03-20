(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_user_group_membership

val aws_iam_user_group_membership :
  ?id:string prop ->
  groups:string prop list ->
  user:string prop ->
  unit ->
  aws_iam_user_group_membership

val yojson_of_aws_iam_user_group_membership :
  aws_iam_user_group_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  groups : string list prop;
  id : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  groups:string prop list ->
  user:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  groups:string prop list ->
  user:string prop ->
  string ->
  t Tf_core.resource
