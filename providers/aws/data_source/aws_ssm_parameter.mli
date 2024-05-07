(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssm_parameter

val aws_ssm_parameter :
  ?id:string prop ->
  ?with_decryption:bool prop ->
  name:string prop ->
  unit ->
  aws_ssm_parameter

val yojson_of_aws_ssm_parameter : aws_ssm_parameter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  insecure_value : string prop;
  name : string prop;
  type_ : string prop;
  value : string prop;
  version : float prop;
  with_decryption : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?with_decryption:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?with_decryption:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
