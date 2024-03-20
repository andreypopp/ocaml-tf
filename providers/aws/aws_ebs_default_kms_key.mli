(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ebs_default_kms_key

val aws_ebs_default_kms_key :
  ?id:string prop ->
  key_arn:string prop ->
  unit ->
  aws_ebs_default_kms_key

val yojson_of_aws_ebs_default_kms_key :
  aws_ebs_default_kms_key -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; key_arn : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  key_arn:string prop ->
  string ->
  t Tf_core.resource
