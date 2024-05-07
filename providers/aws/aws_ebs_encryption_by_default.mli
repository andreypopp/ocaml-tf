(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ebs_encryption_by_default

val aws_ebs_encryption_by_default :
  ?enabled:bool prop ->
  ?id:string prop ->
  unit ->
  aws_ebs_encryption_by_default

val yojson_of_aws_ebs_encryption_by_default :
  aws_ebs_encryption_by_default -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
