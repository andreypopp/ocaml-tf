(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ami_launch_permission

val aws_ami_launch_permission :
  ?account_id:string prop ->
  ?group:string prop ->
  ?id:string prop ->
  ?organization_arn:string prop ->
  ?organizational_unit_arn:string prop ->
  image_id:string prop ->
  unit ->
  aws_ami_launch_permission

val yojson_of_aws_ami_launch_permission :
  aws_ami_launch_permission -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  group : string prop;
  id : string prop;
  image_id : string prop;
  organization_arn : string prop;
  organizational_unit_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?group:string prop ->
  ?id:string prop ->
  ?organization_arn:string prop ->
  ?organizational_unit_arn:string prop ->
  image_id:string prop ->
  string ->
  t
