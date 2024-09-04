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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  replica:replica list ->
  unit ->
  aws_secretsmanager_secret

val yojson_of_aws_secretsmanager_secret :
  aws_secretsmanager_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  force_overwrite_replica_secret : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  recovery_window_in_days : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  replica:replica list ->
  string ->
  t Tf_core.resource
