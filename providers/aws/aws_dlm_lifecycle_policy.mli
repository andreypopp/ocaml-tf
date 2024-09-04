(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type policy_details__action__cross_region_copy__encryption_configuration

val policy_details__action__cross_region_copy__encryption_configuration :
  ?cmk_arn:string prop ->
  ?encrypted:bool prop ->
  unit ->
  policy_details__action__cross_region_copy__encryption_configuration

type policy_details__action__cross_region_copy__retain_rule

val policy_details__action__cross_region_copy__retain_rule :
  interval:float prop ->
  interval_unit:string prop ->
  unit ->
  policy_details__action__cross_region_copy__retain_rule

type policy_details__action__cross_region_copy

val policy_details__action__cross_region_copy :
  ?retain_rule:
    policy_details__action__cross_region_copy__retain_rule list ->
  target:string prop ->
  encryption_configuration:
    policy_details__action__cross_region_copy__encryption_configuration
    list ->
  unit ->
  policy_details__action__cross_region_copy

type policy_details__action

val policy_details__action :
  name:string prop ->
  cross_region_copy:policy_details__action__cross_region_copy list ->
  unit ->
  policy_details__action

type policy_details__event_source__parameters

val policy_details__event_source__parameters :
  description_regex:string prop ->
  event_type:string prop ->
  snapshot_owner:string prop list ->
  unit ->
  policy_details__event_source__parameters

type policy_details__event_source

val policy_details__event_source :
  type_:string prop ->
  parameters:policy_details__event_source__parameters list ->
  unit ->
  policy_details__event_source

type policy_details__parameters

val policy_details__parameters :
  ?exclude_boot_volume:bool prop ->
  ?no_reboot:bool prop ->
  unit ->
  policy_details__parameters

type policy_details__schedule__create_rule

val policy_details__schedule__create_rule :
  ?cron_expression:string prop ->
  ?interval:float prop ->
  ?interval_unit:string prop ->
  ?location:string prop ->
  ?times:string prop list ->
  unit ->
  policy_details__schedule__create_rule

type policy_details__schedule__cross_region_copy_rule__deprecate_rule

val policy_details__schedule__cross_region_copy_rule__deprecate_rule :
  interval:float prop ->
  interval_unit:string prop ->
  unit ->
  policy_details__schedule__cross_region_copy_rule__deprecate_rule

type policy_details__schedule__cross_region_copy_rule__retain_rule

val policy_details__schedule__cross_region_copy_rule__retain_rule :
  interval:float prop ->
  interval_unit:string prop ->
  unit ->
  policy_details__schedule__cross_region_copy_rule__retain_rule

type policy_details__schedule__cross_region_copy_rule

val policy_details__schedule__cross_region_copy_rule :
  ?cmk_arn:string prop ->
  ?copy_tags:bool prop ->
  ?deprecate_rule:
    policy_details__schedule__cross_region_copy_rule__deprecate_rule
    list ->
  ?retain_rule:
    policy_details__schedule__cross_region_copy_rule__retain_rule
    list ->
  encrypted:bool prop ->
  target:string prop ->
  unit ->
  policy_details__schedule__cross_region_copy_rule

type policy_details__schedule__deprecate_rule

val policy_details__schedule__deprecate_rule :
  ?count:float prop ->
  ?interval:float prop ->
  ?interval_unit:string prop ->
  unit ->
  policy_details__schedule__deprecate_rule

type policy_details__schedule__fast_restore_rule

val policy_details__schedule__fast_restore_rule :
  ?count:float prop ->
  ?interval:float prop ->
  ?interval_unit:string prop ->
  availability_zones:string prop list ->
  unit ->
  policy_details__schedule__fast_restore_rule

type policy_details__schedule__retain_rule

val policy_details__schedule__retain_rule :
  ?count:float prop ->
  ?interval:float prop ->
  ?interval_unit:string prop ->
  unit ->
  policy_details__schedule__retain_rule

type policy_details__schedule__share_rule

val policy_details__schedule__share_rule :
  ?unshare_interval:float prop ->
  ?unshare_interval_unit:string prop ->
  target_accounts:string prop list ->
  unit ->
  policy_details__schedule__share_rule

type policy_details__schedule

val policy_details__schedule :
  ?copy_tags:bool prop ->
  ?tags_to_add:string prop Tf_core.assoc ->
  ?variable_tags:string prop Tf_core.assoc ->
  ?deprecate_rule:policy_details__schedule__deprecate_rule list ->
  ?fast_restore_rule:policy_details__schedule__fast_restore_rule list ->
  ?share_rule:policy_details__schedule__share_rule list ->
  name:string prop ->
  create_rule:policy_details__schedule__create_rule list ->
  cross_region_copy_rule:
    policy_details__schedule__cross_region_copy_rule list ->
  retain_rule:policy_details__schedule__retain_rule list ->
  unit ->
  policy_details__schedule

type policy_details

val policy_details :
  ?policy_type:string prop ->
  ?resource_locations:string prop list ->
  ?resource_types:string prop list ->
  ?target_tags:string prop Tf_core.assoc ->
  ?action:policy_details__action list ->
  ?event_source:policy_details__event_source list ->
  ?parameters:policy_details__parameters list ->
  ?schedule:policy_details__schedule list ->
  unit ->
  policy_details

type aws_dlm_lifecycle_policy

val aws_dlm_lifecycle_policy :
  ?id:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  execution_role_arn:string prop ->
  policy_details:policy_details list ->
  unit ->
  aws_dlm_lifecycle_policy

val yojson_of_aws_dlm_lifecycle_policy :
  aws_dlm_lifecycle_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  execution_role_arn : string prop;
  id : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  execution_role_arn:string prop ->
  policy_details:policy_details list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  execution_role_arn:string prop ->
  policy_details:policy_details list ->
  string ->
  t Tf_core.resource
