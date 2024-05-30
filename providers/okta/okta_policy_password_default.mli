(** Configures default password policy. This resource allows you to configure default password policy. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_password_default

val okta_policy_password_default :
  ?call_recovery:string prop ->
  ?email_recovery:string prop ->
  ?id:string prop ->
  ?password_auto_unlock_minutes:float prop ->
  ?password_dictionary_lookup:bool prop ->
  ?password_exclude_first_name:bool prop ->
  ?password_exclude_last_name:bool prop ->
  ?password_exclude_username:bool prop ->
  ?password_expire_warn_days:float prop ->
  ?password_history_count:float prop ->
  ?password_lockout_notification_channels:string prop list ->
  ?password_max_age_days:float prop ->
  ?password_max_lockout_attempts:float prop ->
  ?password_min_age_minutes:float prop ->
  ?password_min_length:float prop ->
  ?password_min_lowercase:float prop ->
  ?password_min_number:float prop ->
  ?password_min_symbol:float prop ->
  ?password_min_uppercase:float prop ->
  ?password_show_lockout_failures:bool prop ->
  ?question_min_length:float prop ->
  ?question_recovery:string prop ->
  ?recovery_email_token:float prop ->
  ?skip_unlock:bool prop ->
  ?sms_recovery:string prop ->
  unit ->
  okta_policy_password_default

val yojson_of_okta_policy_password_default :
  okta_policy_password_default -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  call_recovery : string prop;
  default_auth_provider : string prop;
  default_included_group_id : string prop;
  description : string prop;
  email_recovery : string prop;
  id : string prop;
  name : string prop;
  password_auto_unlock_minutes : float prop;
  password_dictionary_lookup : bool prop;
  password_exclude_first_name : bool prop;
  password_exclude_last_name : bool prop;
  password_exclude_username : bool prop;
  password_expire_warn_days : float prop;
  password_history_count : float prop;
  password_lockout_notification_channels : string list prop;
  password_max_age_days : float prop;
  password_max_lockout_attempts : float prop;
  password_min_age_minutes : float prop;
  password_min_length : float prop;
  password_min_lowercase : float prop;
  password_min_number : float prop;
  password_min_symbol : float prop;
  password_min_uppercase : float prop;
  password_show_lockout_failures : bool prop;
  priority : float prop;
  question_min_length : float prop;
  question_recovery : string prop;
  recovery_email_token : float prop;
  skip_unlock : bool prop;
  sms_recovery : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?call_recovery:string prop ->
  ?email_recovery:string prop ->
  ?id:string prop ->
  ?password_auto_unlock_minutes:float prop ->
  ?password_dictionary_lookup:bool prop ->
  ?password_exclude_first_name:bool prop ->
  ?password_exclude_last_name:bool prop ->
  ?password_exclude_username:bool prop ->
  ?password_expire_warn_days:float prop ->
  ?password_history_count:float prop ->
  ?password_lockout_notification_channels:string prop list ->
  ?password_max_age_days:float prop ->
  ?password_max_lockout_attempts:float prop ->
  ?password_min_age_minutes:float prop ->
  ?password_min_length:float prop ->
  ?password_min_lowercase:float prop ->
  ?password_min_number:float prop ->
  ?password_min_symbol:float prop ->
  ?password_min_uppercase:float prop ->
  ?password_show_lockout_failures:bool prop ->
  ?question_min_length:float prop ->
  ?question_recovery:string prop ->
  ?recovery_email_token:float prop ->
  ?skip_unlock:bool prop ->
  ?sms_recovery:string prop ->
  string ->
  t

val make :
  ?call_recovery:string prop ->
  ?email_recovery:string prop ->
  ?id:string prop ->
  ?password_auto_unlock_minutes:float prop ->
  ?password_dictionary_lookup:bool prop ->
  ?password_exclude_first_name:bool prop ->
  ?password_exclude_last_name:bool prop ->
  ?password_exclude_username:bool prop ->
  ?password_expire_warn_days:float prop ->
  ?password_history_count:float prop ->
  ?password_lockout_notification_channels:string prop list ->
  ?password_max_age_days:float prop ->
  ?password_max_lockout_attempts:float prop ->
  ?password_min_age_minutes:float prop ->
  ?password_min_length:float prop ->
  ?password_min_lowercase:float prop ->
  ?password_min_number:float prop ->
  ?password_min_symbol:float prop ->
  ?password_min_uppercase:float prop ->
  ?password_show_lockout_failures:bool prop ->
  ?question_min_length:float prop ->
  ?question_recovery:string prop ->
  ?recovery_email_token:float prop ->
  ?skip_unlock:bool prop ->
  ?sms_recovery:string prop ->
  string ->
  t Tf_core.resource
