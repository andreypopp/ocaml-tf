(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_backup_setting

val advanced_backup_setting :
  backup_options:string prop Tf_core.assoc ->
  resource_type:string prop ->
  unit ->
  advanced_backup_setting

type rule__copy_action__lifecycle

val rule__copy_action__lifecycle :
  ?cold_storage_after:float prop ->
  ?delete_after:float prop ->
  ?opt_in_to_archive_for_supported_resources:bool prop ->
  unit ->
  rule__copy_action__lifecycle

type rule__copy_action

val rule__copy_action :
  ?lifecycle:rule__copy_action__lifecycle list ->
  destination_vault_arn:string prop ->
  unit ->
  rule__copy_action

type rule__lifecycle

val rule__lifecycle :
  ?cold_storage_after:float prop ->
  ?delete_after:float prop ->
  ?opt_in_to_archive_for_supported_resources:bool prop ->
  unit ->
  rule__lifecycle

type rule

val rule :
  ?completion_window:float prop ->
  ?enable_continuous_backup:bool prop ->
  ?recovery_point_tags:string prop Tf_core.assoc ->
  ?schedule:string prop ->
  ?start_window:float prop ->
  ?lifecycle:rule__lifecycle list ->
  rule_name:string prop ->
  target_vault_name:string prop ->
  copy_action:rule__copy_action list ->
  unit ->
  rule

type aws_backup_plan

val aws_backup_plan :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  advanced_backup_setting:advanced_backup_setting list ->
  rule:rule list ->
  unit ->
  aws_backup_plan

val yojson_of_aws_backup_plan : aws_backup_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  advanced_backup_setting:advanced_backup_setting list ->
  rule:rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  advanced_backup_setting:advanced_backup_setting list ->
  rule:rule list ->
  string ->
  t Tf_core.resource
