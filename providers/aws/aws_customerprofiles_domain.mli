(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type matching__auto_merging__conflict_resolution

val matching__auto_merging__conflict_resolution :
  ?source_name:string prop ->
  conflict_resolving_model:string prop ->
  unit ->
  matching__auto_merging__conflict_resolution

type matching__auto_merging__consolidation

val matching__auto_merging__consolidation :
  matching_attributes_list:string prop list list ->
  unit ->
  matching__auto_merging__consolidation

type matching__auto_merging

val matching__auto_merging :
  ?min_allowed_confidence_score_for_merging:float prop ->
  enabled:bool prop ->
  conflict_resolution:
    matching__auto_merging__conflict_resolution list ->
  consolidation:matching__auto_merging__consolidation list ->
  unit ->
  matching__auto_merging

type matching__exporting_config__s3_exporting

val matching__exporting_config__s3_exporting :
  ?s3_key_name:string prop ->
  s3_bucket_name:string prop ->
  unit ->
  matching__exporting_config__s3_exporting

type matching__exporting_config

val matching__exporting_config :
  s3_exporting:matching__exporting_config__s3_exporting list ->
  unit ->
  matching__exporting_config

type matching__job_schedule

val matching__job_schedule :
  day_of_the_week:string prop ->
  time:string prop ->
  unit ->
  matching__job_schedule

type matching

val matching :
  enabled:bool prop ->
  auto_merging:matching__auto_merging list ->
  exporting_config:matching__exporting_config list ->
  job_schedule:matching__job_schedule list ->
  unit ->
  matching

type rule_based_matching__attribute_types_selector

val rule_based_matching__attribute_types_selector :
  ?address:string prop list ->
  ?email_address:string prop list ->
  ?phone_number:string prop list ->
  attribute_matching_model:string prop ->
  unit ->
  rule_based_matching__attribute_types_selector

type rule_based_matching__conflict_resolution

val rule_based_matching__conflict_resolution :
  ?source_name:string prop ->
  conflict_resolving_model:string prop ->
  unit ->
  rule_based_matching__conflict_resolution

type rule_based_matching__exporting_config__s3_exporting

val rule_based_matching__exporting_config__s3_exporting :
  ?s3_key_name:string prop ->
  s3_bucket_name:string prop ->
  unit ->
  rule_based_matching__exporting_config__s3_exporting

type rule_based_matching__exporting_config

val rule_based_matching__exporting_config :
  s3_exporting:
    rule_based_matching__exporting_config__s3_exporting list ->
  unit ->
  rule_based_matching__exporting_config

type rule_based_matching__matching_rules

val rule_based_matching__matching_rules :
  rule:string prop list ->
  unit ->
  rule_based_matching__matching_rules

type rule_based_matching

val rule_based_matching :
  ?max_allowed_rule_level_for_matching:float prop ->
  ?max_allowed_rule_level_for_merging:float prop ->
  ?status:string prop ->
  enabled:bool prop ->
  attribute_types_selector:
    rule_based_matching__attribute_types_selector list ->
  conflict_resolution:rule_based_matching__conflict_resolution list ->
  exporting_config:rule_based_matching__exporting_config list ->
  matching_rules:rule_based_matching__matching_rules list ->
  unit ->
  rule_based_matching

type aws_customerprofiles_domain

val aws_customerprofiles_domain :
  ?dead_letter_queue_url:string prop ->
  ?default_encryption_key:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_expiration_days:float prop ->
  domain_name:string prop ->
  matching:matching list ->
  rule_based_matching:rule_based_matching list ->
  unit ->
  aws_customerprofiles_domain

val yojson_of_aws_customerprofiles_domain :
  aws_customerprofiles_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  dead_letter_queue_url : string prop;
  default_encryption_key : string prop;
  default_expiration_days : float prop;
  domain_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?dead_letter_queue_url:string prop ->
  ?default_encryption_key:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_expiration_days:float prop ->
  domain_name:string prop ->
  matching:matching list ->
  rule_based_matching:rule_based_matching list ->
  string ->
  t

val make :
  ?dead_letter_queue_url:string prop ->
  ?default_encryption_key:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_expiration_days:float prop ->
  domain_name:string prop ->
  matching:matching list ->
  rule_based_matching:rule_based_matching list ->
  string ->
  t Tf_core.resource
