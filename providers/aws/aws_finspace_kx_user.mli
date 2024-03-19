(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  environment_id:string prop ->
  iam_role:string prop ->
  name:string prop ->
  unit ->
  aws_finspace_kx_user

val yojson_of_aws_finspace_kx_user : aws_finspace_kx_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  environment_id : string prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  environment_id:string prop ->
  iam_role:string prop ->
  name:string prop ->
  string ->
  t
