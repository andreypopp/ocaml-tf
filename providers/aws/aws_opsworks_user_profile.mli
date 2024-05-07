(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_opsworks_user_profile

val aws_opsworks_user_profile :
  ?allow_self_management:bool prop ->
  ?id:string prop ->
  ?ssh_public_key:string prop ->
  ssh_username:string prop ->
  user_arn:string prop ->
  unit ->
  aws_opsworks_user_profile

val yojson_of_aws_opsworks_user_profile :
  aws_opsworks_user_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_self_management : bool prop;
  id : string prop;
  ssh_public_key : string prop;
  ssh_username : string prop;
  user_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_self_management:bool prop ->
  ?id:string prop ->
  ?ssh_public_key:string prop ->
  ssh_username:string prop ->
  user_arn:string prop ->
  string ->
  t

val make :
  ?allow_self_management:bool prop ->
  ?id:string prop ->
  ?ssh_public_key:string prop ->
  ssh_username:string prop ->
  user_arn:string prop ->
  string ->
  t Tf_core.resource
