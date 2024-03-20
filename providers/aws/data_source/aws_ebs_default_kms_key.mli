(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ebs_default_kms_key

val aws_ebs_default_kms_key :
  ?id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_ebs_default_kms_key

val yojson_of_aws_ebs_default_kms_key :
  aws_ebs_default_kms_key -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; key_arn : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
