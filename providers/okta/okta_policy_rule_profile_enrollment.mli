(** Creates a Profile Enrollment Policy Rule.
		
~> **WARNING:** This feature is only available as a part of the Identity Engine. [Contact support](mailto:dev-inquiries@okta.com) for further information.
A [profile enrollment
policy](https://developer.okta.com/docs/reference/api/policy/#profile-enrollment-policy)
is limited to one default rule. This resource does not create a rule for an
enrollment policy, it allows the default policy rule to be updated. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type profile_attributes

val profile_attributes :
  ?required:bool prop ->
  label:string prop ->
  name:string prop ->
  unit ->
  profile_attributes

type okta_policy_rule_profile_enrollment

val okta_policy_rule_profile_enrollment :
  ?access:string prop ->
  ?email_verification:bool prop ->
  ?id:string prop ->
  ?inline_hook_id:string prop ->
  ?progressive_profiling_action:string prop ->
  ?target_group_id:string prop ->
  ?ui_schema_id:string prop ->
  ?profile_attributes:profile_attributes list ->
  policy_id:string prop ->
  unknown_user_action:string prop ->
  unit ->
  okta_policy_rule_profile_enrollment

val yojson_of_okta_policy_rule_profile_enrollment :
  okta_policy_rule_profile_enrollment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access : string prop;
  email_verification : bool prop;
  id : string prop;
  inline_hook_id : string prop;
  name : string prop;
  policy_id : string prop;
  progressive_profiling_action : string prop;
  status : string prop;
  target_group_id : string prop;
  ui_schema_id : string prop;
  unknown_user_action : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access:string prop ->
  ?email_verification:bool prop ->
  ?id:string prop ->
  ?inline_hook_id:string prop ->
  ?progressive_profiling_action:string prop ->
  ?target_group_id:string prop ->
  ?ui_schema_id:string prop ->
  ?profile_attributes:profile_attributes list ->
  policy_id:string prop ->
  unknown_user_action:string prop ->
  string ->
  t

val make :
  ?access:string prop ->
  ?email_verification:bool prop ->
  ?id:string prop ->
  ?inline_hook_id:string prop ->
  ?progressive_profiling_action:string prop ->
  ?target_group_id:string prop ->
  ?ui_schema_id:string prop ->
  ?profile_attributes:profile_attributes list ->
  policy_id:string prop ->
  unknown_user_action:string prop ->
  string ->
  t Tf_core.resource
