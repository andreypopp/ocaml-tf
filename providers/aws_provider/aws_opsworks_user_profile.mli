(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_user_profile

type t = private {
  allow_self_management : bool prop;
  id : string prop;
  ssh_public_key : string prop;
  ssh_username : string prop;
  user_arn : string prop;
}

val aws_opsworks_user_profile :
  ?allow_self_management:bool prop ->
  ?id:string prop ->
  ?ssh_public_key:string prop ->
  ssh_username:string prop ->
  user_arn:string prop ->
  string ->
  t
