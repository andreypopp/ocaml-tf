(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_customerprofiles_domain__matching__auto_merging__conflict_resolution

type aws_customerprofiles_domain__matching__auto_merging__consolidation

type aws_customerprofiles_domain__matching__auto_merging

type aws_customerprofiles_domain__matching__exporting_config__s3_exporting

type aws_customerprofiles_domain__matching__exporting_config
type aws_customerprofiles_domain__matching__job_schedule
type aws_customerprofiles_domain__matching

type aws_customerprofiles_domain__rule_based_matching__attribute_types_selector

type aws_customerprofiles_domain__rule_based_matching__conflict_resolution

type aws_customerprofiles_domain__rule_based_matching__exporting_config__s3_exporting

type aws_customerprofiles_domain__rule_based_matching__exporting_config

type aws_customerprofiles_domain__rule_based_matching__matching_rules
type aws_customerprofiles_domain__rule_based_matching
type aws_customerprofiles_domain

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

val aws_customerprofiles_domain :
  ?dead_letter_queue_url:string prop ->
  ?default_encryption_key:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_expiration_days:float prop ->
  domain_name:string prop ->
  matching:aws_customerprofiles_domain__matching list ->
  rule_based_matching:
    aws_customerprofiles_domain__rule_based_matching list ->
  string ->
  t
