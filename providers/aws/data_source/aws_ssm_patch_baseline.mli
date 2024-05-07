(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type approval_rule__patch_filter = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}

type approval_rule = {
  approve_after_days : float prop;  (** approve_after_days *)
  approve_until_date : string prop;  (** approve_until_date *)
  compliance_level : string prop;  (** compliance_level *)
  enable_non_security : bool prop;  (** enable_non_security *)
  patch_filter : approval_rule__patch_filter list;
      (** patch_filter *)
}

type global_filter = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}

type source = {
  configuration : string prop;  (** configuration *)
  name : string prop;  (** name *)
  products : string prop list;  (** products *)
}

type aws_ssm_patch_baseline

val aws_ssm_patch_baseline :
  ?default_baseline:bool prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?operating_system:string prop ->
  owner:string prop ->
  unit ->
  aws_ssm_patch_baseline

val yojson_of_aws_ssm_patch_baseline : aws_ssm_patch_baseline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  approval_rule : approval_rule list prop;
  approved_patches : string list prop;
  approved_patches_compliance_level : string prop;
  approved_patches_enable_non_security : bool prop;
  default_baseline : bool prop;
  description : string prop;
  global_filter : global_filter list prop;
  id : string prop;
  json : string prop;
  name : string prop;
  name_prefix : string prop;
  operating_system : string prop;
  owner : string prop;
  rejected_patches : string list prop;
  rejected_patches_action : string prop;
  source : source list prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_baseline:bool prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?operating_system:string prop ->
  owner:string prop ->
  string ->
  t

val make :
  ?default_baseline:bool prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?operating_system:string prop ->
  owner:string prop ->
  string ->
  t Tf_core.resource
