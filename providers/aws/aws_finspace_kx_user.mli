(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_finspace_kx_user

val aws_finspace_kx_user :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  environment_id:string prop ->
  iam_role:string prop ->
  name:string prop ->
  unit ->
  aws_finspace_kx_user

val yojson_of_aws_finspace_kx_user : aws_finspace_kx_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  environment_id : string prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  environment_id:string prop ->
  iam_role:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  environment_id:string prop ->
  iam_role:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
