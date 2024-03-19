(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_transfer_ssh_key

val aws_transfer_ssh_key :
  ?id:string prop ->
  body:string prop ->
  server_id:string prop ->
  user_name:string prop ->
  unit ->
  aws_transfer_ssh_key

val yojson_of_aws_transfer_ssh_key : aws_transfer_ssh_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  body : string prop;
  id : string prop;
  server_id : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  body:string prop ->
  server_id:string prop ->
  user_name:string prop ->
  string ->
  t
