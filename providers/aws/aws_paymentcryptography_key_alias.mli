(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_paymentcryptography_key_alias

val aws_paymentcryptography_key_alias :
  ?key_arn:string prop ->
  alias_name:string prop ->
  unit ->
  aws_paymentcryptography_key_alias

val yojson_of_aws_paymentcryptography_key_alias :
  aws_paymentcryptography_key_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias_name : string prop;
  id : string prop;
  key_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?key_arn:string prop ->
  alias_name:string prop ->
  string ->
  t

val make :
  ?key_arn:string prop ->
  alias_name:string prop ->
  string ->
  t Tf_core.resource
