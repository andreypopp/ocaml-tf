(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshiftserverless_snapshot

val aws_redshiftserverless_snapshot :
  ?id:string prop ->
  ?retention_period:float prop ->
  namespace_name:string prop ->
  snapshot_name:string prop ->
  unit ->
  aws_redshiftserverless_snapshot

val yojson_of_aws_redshiftserverless_snapshot :
  aws_redshiftserverless_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accounts_with_provisioned_restore_access : string list prop;
  accounts_with_restore_access : string list prop;
  admin_username : string prop;
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  namespace_arn : string prop;
  namespace_name : string prop;
  owner_account : string prop;
  retention_period : float prop;
  snapshot_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?retention_period:float prop ->
  namespace_name:string prop ->
  snapshot_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?retention_period:float prop ->
  namespace_name:string prop ->
  snapshot_name:string prop ->
  string ->
  t Tf_core.resource
