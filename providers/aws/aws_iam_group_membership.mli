(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_group_membership

val aws_iam_group_membership :
  ?id:string prop ->
  group:string prop ->
  name:string prop ->
  users:string prop list ->
  unit ->
  aws_iam_group_membership

val yojson_of_aws_iam_group_membership :
  aws_iam_group_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  group : string prop;
  id : string prop;
  name : string prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group:string prop ->
  name:string prop ->
  users:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  group:string prop ->
  name:string prop ->
  users:string prop list ->
  string ->
  t Tf_core.resource
