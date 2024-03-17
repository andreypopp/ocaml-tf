(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__encryption_configuration

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__retain_rule

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy

type aws_dlm_lifecycle_policy__policy_details__action

type aws_dlm_lifecycle_policy__policy_details__event_source__parameters

type aws_dlm_lifecycle_policy__policy_details__event_source
type aws_dlm_lifecycle_policy__policy_details__parameters
type aws_dlm_lifecycle_policy__policy_details__schedule__create_rule

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__deprecate_rule

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__retain_rule

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule

type aws_dlm_lifecycle_policy__policy_details__schedule__deprecate_rule

type aws_dlm_lifecycle_policy__policy_details__schedule__fast_restore_rule

type aws_dlm_lifecycle_policy__policy_details__schedule__retain_rule
type aws_dlm_lifecycle_policy__policy_details__schedule__share_rule
type aws_dlm_lifecycle_policy__policy_details__schedule
type aws_dlm_lifecycle_policy__policy_details
type aws_dlm_lifecycle_policy

type t = private {
  arn : string prop;
  description : string prop;
  execution_role_arn : string prop;
  id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_dlm_lifecycle_policy :
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  description:string prop ->
  execution_role_arn:string prop ->
  policy_details:aws_dlm_lifecycle_policy__policy_details list ->
  string ->
  t
