(** Creates a Sign On Policy Rule. In case `Invalid condition type specified: riskScore.` error is thrown, set `risc_level` to an empty string, since this feature is not enabled. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type factor_sequence__secondary_criteria

val factor_sequence__secondary_criteria :
  factor_type:string prop ->
  provider:string prop ->
  unit ->
  factor_sequence__secondary_criteria

type factor_sequence

val factor_sequence :
  ?secondary_criteria:factor_sequence__secondary_criteria list ->
  primary_criteria_factor_type:string prop ->
  primary_criteria_provider:string prop ->
  unit ->
  factor_sequence

type okta_policy_rule_signon

val okta_policy_rule_signon :
  ?access:string prop ->
  ?authtype:string prop ->
  ?behaviors:string prop list ->
  ?id:string prop ->
  ?identity_provider:string prop ->
  ?identity_provider_ids:string prop list ->
  ?mfa_lifetime:float prop ->
  ?mfa_prompt:string prop ->
  ?mfa_remember_device:bool prop ->
  ?mfa_required:bool prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?primary_factor:string prop ->
  ?priority:float prop ->
  ?risc_level:string prop ->
  ?risk_level:string prop ->
  ?session_idle:float prop ->
  ?session_lifetime:float prop ->
  ?session_persistent:bool prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  ?factor_sequence:factor_sequence list ->
  name:string prop ->
  unit ->
  okta_policy_rule_signon

val yojson_of_okta_policy_rule_signon :
  okta_policy_rule_signon -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access : string prop;
  authtype : string prop;
  behaviors : string list prop;
  id : string prop;
  identity_provider : string prop;
  identity_provider_ids : string list prop;
  mfa_lifetime : float prop;
  mfa_prompt : string prop;
  mfa_remember_device : bool prop;
  mfa_required : bool prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  policy_id : string prop;
  primary_factor : string prop;
  priority : float prop;
  risc_level : string prop;
  risk_level : string prop;
  session_idle : float prop;
  session_lifetime : float prop;
  session_persistent : bool prop;
  status : string prop;
  users_excluded : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?access:string prop ->
  ?authtype:string prop ->
  ?behaviors:string prop list ->
  ?id:string prop ->
  ?identity_provider:string prop ->
  ?identity_provider_ids:string prop list ->
  ?mfa_lifetime:float prop ->
  ?mfa_prompt:string prop ->
  ?mfa_remember_device:bool prop ->
  ?mfa_required:bool prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?primary_factor:string prop ->
  ?priority:float prop ->
  ?risc_level:string prop ->
  ?risk_level:string prop ->
  ?session_idle:float prop ->
  ?session_lifetime:float prop ->
  ?session_persistent:bool prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  ?factor_sequence:factor_sequence list ->
  name:string prop ->
  string ->
  t

val make :
  ?access:string prop ->
  ?authtype:string prop ->
  ?behaviors:string prop list ->
  ?id:string prop ->
  ?identity_provider:string prop ->
  ?identity_provider_ids:string prop list ->
  ?mfa_lifetime:float prop ->
  ?mfa_prompt:string prop ->
  ?mfa_remember_device:bool prop ->
  ?mfa_required:bool prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?primary_factor:string prop ->
  ?priority:float prop ->
  ?risc_level:string prop ->
  ?risk_level:string prop ->
  ?session_idle:float prop ->
  ?session_lifetime:float prop ->
  ?session_persistent:bool prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  ?factor_sequence:factor_sequence list ->
  name:string prop ->
  string ->
  t Tf_core.resource
