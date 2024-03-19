(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_user_ssh_key

val aws_iam_user_ssh_key :
  ?id:string prop ->
  ?status:string prop ->
  encoding:string prop ->
  public_key:string prop ->
  username:string prop ->
  unit ->
  aws_iam_user_ssh_key

val yojson_of_aws_iam_user_ssh_key : aws_iam_user_ssh_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  encoding : string prop;
  fingerprint : string prop;
  id : string prop;
  public_key : string prop;
  ssh_public_key_id : string prop;
  status : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  encoding:string prop ->
  public_key:string prop ->
  username:string prop ->
  string ->
  t
