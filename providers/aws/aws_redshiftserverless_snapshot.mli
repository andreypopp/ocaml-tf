(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftserverless_snapshot

type t = private {
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

val aws_redshiftserverless_snapshot :
  ?id:string prop ->
  ?retention_period:float prop ->
  namespace_name:string prop ->
  snapshot_name:string prop ->
  string ->
  t
