(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type replica

val replica :
  ?kms_key_id:string prop -> region:string prop -> unit -> replica

type aws_secretsmanager_secret

val aws_secretsmanager_secret :
  ?description:string prop ->
  ?force_overwrite_replica_secret:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?policy:string prop ->
  ?recovery_window_in_days:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  replica:replica list ->
  unit ->
  aws_secretsmanager_secret

val yojson_of_aws_secretsmanager_secret :
  aws_secretsmanager_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  force_overwrite_replica_secret : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  recovery_window_in_days : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?force_overwrite_replica_secret:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?policy:string prop ->
  ?recovery_window_in_days:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  replica:replica list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?force_overwrite_replica_secret:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?policy:string prop ->
  ?recovery_window_in_days:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  replica:replica list ->
  string ->
  t Tf_core.resource
