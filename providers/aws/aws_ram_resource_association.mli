(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ram_resource_association

val aws_ram_resource_association :
  ?id:string prop ->
  resource_arn:string prop ->
  resource_share_arn:string prop ->
  unit ->
  aws_ram_resource_association

val yojson_of_aws_ram_resource_association :
  aws_ram_resource_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  resource_arn : string prop;
  resource_share_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  resource_arn:string prop ->
  resource_share_arn:string prop ->
  string ->
  t
