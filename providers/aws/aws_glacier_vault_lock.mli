(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_glacier_vault_lock

val aws_glacier_vault_lock :
  ?id:string prop ->
  ?ignore_deletion_error:bool prop ->
  complete_lock:bool prop ->
  policy:string prop ->
  vault_name:string prop ->
  unit ->
  aws_glacier_vault_lock

val yojson_of_aws_glacier_vault_lock : aws_glacier_vault_lock -> json

(** RESOURCE REGISTRATION *)

type t = private {
  complete_lock : bool prop;
  id : string prop;
  ignore_deletion_error : bool prop;
  policy : string prop;
  vault_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ignore_deletion_error:bool prop ->
  complete_lock:bool prop ->
  policy:string prop ->
  vault_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ignore_deletion_error:bool prop ->
  complete_lock:bool prop ->
  policy:string prop ->
  vault_name:string prop ->
  string ->
  t Tf_core.resource
