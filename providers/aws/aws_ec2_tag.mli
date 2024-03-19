(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ec2_tag

val aws_ec2_tag :
  ?id:string prop ->
  key:string prop ->
  resource_id:string prop ->
  value:string prop ->
  unit ->
  aws_ec2_tag

val yojson_of_aws_ec2_tag : aws_ec2_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  key : string prop;
  resource_id : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key:string prop ->
  resource_id:string prop ->
  value:string prop ->
  string ->
  t
