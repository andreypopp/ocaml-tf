(**  Manages a sign-on policy rules for the application.
~> **WARNING:** This feature is only available as a part of the Identity Engine. [Contact support](mailto:dev-inquiries@okta.com) for further information.
This resource allows you to create and configure a sign-on policy rule for the application.
A default or 'Catch-all Rule' sign-on policy rule can be imported and managed as a custom rule.
The only difference is that these fields are immutable and can not be managed: 'network_connection', 'network_excludes', 
'network_includes', 'platform_include', 'custom_expression', 'device_is_registered', 'device_is_managed', 'users_excluded',
'users_included', 'groups_excluded', 'groups_included', 'user_types_excluded' and 'user_types_included'. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type platform_include

val platform_include :
  ?os_expression:string prop ->
  ?os_type:string prop ->
  ?type_:string prop ->
  unit ->
  platform_include

type okta_app_signon_policy_rule

val okta_app_signon_policy_rule :
  ?access:string prop ->
  ?constraints:string prop list ->
  ?custom_expression:string prop ->
  ?device_assurances_included:string prop list ->
  ?device_is_managed:bool prop ->
  ?device_is_registered:bool prop ->
  ?factor_mode:string prop ->
  ?groups_excluded:string prop list ->
  ?groups_included:string prop list ->
  ?id:string prop ->
  ?inactivity_period:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?priority:float prop ->
  ?re_authentication_frequency:string prop ->
  ?risk_score:string prop ->
  ?status:string prop ->
  ?type_:string prop ->
  ?user_types_excluded:string prop list ->
  ?user_types_included:string prop list ->
  ?users_excluded:string prop list ->
  ?users_included:string prop list ->
  name:string prop ->
  policy_id:string prop ->
  platform_include:platform_include list ->
  unit ->
  okta_app_signon_policy_rule

val yojson_of_okta_app_signon_policy_rule :
  okta_app_signon_policy_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access : string prop;
  constraints : string list prop;
  custom_expression : string prop;
  device_assurances_included : string list prop;
  device_is_managed : bool prop;
  device_is_registered : bool prop;
  factor_mode : string prop;
  groups_excluded : string list prop;
  groups_included : string list prop;
  id : string prop;
  inactivity_period : string prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  policy_id : string prop;
  priority : float prop;
  re_authentication_frequency : string prop;
  risk_score : string prop;
  status : string prop;
  system : bool prop;
  type_ : string prop;
  user_types_excluded : string list prop;
  user_types_included : string list prop;
  users_excluded : string list prop;
  users_included : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?access:string prop ->
  ?constraints:string prop list ->
  ?custom_expression:string prop ->
  ?device_assurances_included:string prop list ->
  ?device_is_managed:bool prop ->
  ?device_is_registered:bool prop ->
  ?factor_mode:string prop ->
  ?groups_excluded:string prop list ->
  ?groups_included:string prop list ->
  ?id:string prop ->
  ?inactivity_period:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?priority:float prop ->
  ?re_authentication_frequency:string prop ->
  ?risk_score:string prop ->
  ?status:string prop ->
  ?type_:string prop ->
  ?user_types_excluded:string prop list ->
  ?user_types_included:string prop list ->
  ?users_excluded:string prop list ->
  ?users_included:string prop list ->
  name:string prop ->
  policy_id:string prop ->
  platform_include:platform_include list ->
  string ->
  t

val make :
  ?access:string prop ->
  ?constraints:string prop list ->
  ?custom_expression:string prop ->
  ?device_assurances_included:string prop list ->
  ?device_is_managed:bool prop ->
  ?device_is_registered:bool prop ->
  ?factor_mode:string prop ->
  ?groups_excluded:string prop list ->
  ?groups_included:string prop list ->
  ?id:string prop ->
  ?inactivity_period:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?priority:float prop ->
  ?re_authentication_frequency:string prop ->
  ?risk_score:string prop ->
  ?status:string prop ->
  ?type_:string prop ->
  ?user_types_excluded:string prop list ->
  ?user_types_included:string prop list ->
  ?users_excluded:string prop list ->
  ?users_included:string prop list ->
  name:string prop ->
  policy_id:string prop ->
  platform_include:platform_include list ->
  string ->
  t Tf_core.resource
