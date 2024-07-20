(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__lifecycle = {
  cold_storage_after : float prop;  (** cold_storage_after *)
  delete_after : float prop;  (** delete_after *)
  opt_in_to_archive_for_supported_resources : bool prop;
      (** opt_in_to_archive_for_supported_resources *)
}

type rule__copy_action__lifecycle = {
  cold_storage_after : float prop;  (** cold_storage_after *)
  delete_after : float prop;  (** delete_after *)
  opt_in_to_archive_for_supported_resources : bool prop;
      (** opt_in_to_archive_for_supported_resources *)
}

type rule__copy_action = {
  destination_vault_arn : string prop;  (** destination_vault_arn *)
  lifecycle : rule__copy_action__lifecycle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** lifecycle *)
}

type rule = {
  completion_window : float prop;  (** completion_window *)
  copy_action : rule__copy_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** copy_action *)
  enable_continuous_backup : bool prop;
      (** enable_continuous_backup *)
  lifecycle : rule__lifecycle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** lifecycle *)
  recovery_point_tags : (string * string prop) list;
      (** recovery_point_tags *)
  rule_name : string prop;  (** rule_name *)
  schedule : string prop;  (** schedule *)
  start_window : float prop;  (** start_window *)
  target_vault_name : string prop;  (** target_vault_name *)
}

type aws_backup_plan

val aws_backup_plan :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  plan_id:string prop ->
  unit ->
  aws_backup_plan

val yojson_of_aws_backup_plan : aws_backup_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  plan_id : string prop;
  rule : rule list prop;
  tags : (string * string) list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  plan_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  plan_id:string prop ->
  string ->
  t Tf_core.resource
