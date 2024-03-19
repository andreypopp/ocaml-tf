(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ram_principal_association

val aws_ram_principal_association :
  ?id:string prop ->
  principal:string prop ->
  resource_share_arn:string prop ->
  unit ->
  aws_ram_principal_association

val yojson_of_aws_ram_principal_association :
  aws_ram_principal_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  principal : string prop;
  resource_share_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  principal:string prop ->
  resource_share_arn:string prop ->
  string ->
  t
