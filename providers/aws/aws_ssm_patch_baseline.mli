(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type approval_rule__patch_filter

val approval_rule__patch_filter :
  key:string prop ->
  values:string prop list ->
  unit ->
  approval_rule__patch_filter

type approval_rule

val approval_rule :
  ?approve_after_days:float prop ->
  ?approve_until_date:string prop ->
  ?compliance_level:string prop ->
  ?enable_non_security:bool prop ->
  patch_filter:approval_rule__patch_filter list ->
  unit ->
  approval_rule

type global_filter

val global_filter :
  key:string prop -> values:string prop list -> unit -> global_filter

type source

val source :
  configuration:string prop ->
  name:string prop ->
  products:string prop list ->
  unit ->
  source

type aws_ssm_patch_baseline

val aws_ssm_patch_baseline :
  ?approved_patches:string prop list ->
  ?approved_patches_compliance_level:string prop ->
  ?approved_patches_enable_non_security:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?operating_system:string prop ->
  ?rejected_patches:string prop list ->
  ?rejected_patches_action:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?approval_rule:approval_rule list ->
  ?global_filter:global_filter list ->
  ?source:source list ->
  name:string prop ->
  unit ->
  aws_ssm_patch_baseline

val yojson_of_aws_ssm_patch_baseline : aws_ssm_patch_baseline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  approved_patches : string list prop;
  approved_patches_compliance_level : string prop;
  approved_patches_enable_non_security : bool prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  json : string prop;
  name : string prop;
  operating_system : string prop;
  rejected_patches : string list prop;
  rejected_patches_action : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?approved_patches:string prop list ->
  ?approved_patches_compliance_level:string prop ->
  ?approved_patches_enable_non_security:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?operating_system:string prop ->
  ?rejected_patches:string prop list ->
  ?rejected_patches_action:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?approval_rule:approval_rule list ->
  ?global_filter:global_filter list ->
  ?source:source list ->
  name:string prop ->
  string ->
  t

val make :
  ?approved_patches:string prop list ->
  ?approved_patches_compliance_level:string prop ->
  ?approved_patches_enable_non_security:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?operating_system:string prop ->
  ?rejected_patches:string prop list ->
  ?rejected_patches_action:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?approval_rule:approval_rule list ->
  ?global_filter:global_filter list ->
  ?source:source list ->
  name:string prop ->
  string ->
  t Tf_core.resource
