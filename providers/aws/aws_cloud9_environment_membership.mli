(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_cloud9_environment_membership

val aws_cloud9_environment_membership :
  ?id:string prop ->
  environment_id:string prop ->
  permissions:string prop ->
  user_arn:string prop ->
  unit ->
  aws_cloud9_environment_membership

val yojson_of_aws_cloud9_environment_membership :
  aws_cloud9_environment_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  environment_id : string prop;
  id : string prop;
  permissions : string prop;
  user_arn : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  environment_id:string prop ->
  permissions:string prop ->
  user_arn:string prop ->
  string ->
  t
