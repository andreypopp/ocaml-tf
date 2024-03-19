(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_transfer_tag

val aws_transfer_tag :
  ?id:string prop ->
  key:string prop ->
  resource_arn:string prop ->
  value:string prop ->
  unit ->
  aws_transfer_tag

val yojson_of_aws_transfer_tag : aws_transfer_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  key : string prop;
  resource_arn : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key:string prop ->
  resource_arn:string prop ->
  value:string prop ->
  string ->
  t
