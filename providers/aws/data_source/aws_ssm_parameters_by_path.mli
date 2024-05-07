(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssm_parameters_by_path

val aws_ssm_parameters_by_path :
  ?id:string prop ->
  ?recursive:bool prop ->
  ?with_decryption:bool prop ->
  path:string prop ->
  unit ->
  aws_ssm_parameters_by_path

val yojson_of_aws_ssm_parameters_by_path :
  aws_ssm_parameters_by_path -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  names : string list prop;
  path : string prop;
  recursive : bool prop;
  types : string list prop;
  values : string list prop;
  with_decryption : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?recursive:bool prop ->
  ?with_decryption:bool prop ->
  path:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?recursive:bool prop ->
  ?with_decryption:bool prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
