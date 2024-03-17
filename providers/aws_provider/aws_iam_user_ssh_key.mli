(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_user_ssh_key

type t = private {
  encoding : string prop;
  fingerprint : string prop;
  id : string prop;
  public_key : string prop;
  ssh_public_key_id : string prop;
  status : string prop;
  username : string prop;
}

val aws_iam_user_ssh_key :
  ?id:string prop ->
  ?status:string prop ->
  encoding:string prop ->
  public_key:string prop ->
  username:string prop ->
  string ->
  t
