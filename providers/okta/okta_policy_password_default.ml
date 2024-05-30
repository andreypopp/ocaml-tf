(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy_password_default = {
  call_recovery : string prop option; [@option]
  email_recovery : string prop option; [@option]
  id : string prop option; [@option]
  password_auto_unlock_minutes : float prop option; [@option]
  password_dictionary_lookup : bool prop option; [@option]
  password_exclude_first_name : bool prop option; [@option]
  password_exclude_last_name : bool prop option; [@option]
  password_exclude_username : bool prop option; [@option]
  password_expire_warn_days : float prop option; [@option]
  password_history_count : float prop option; [@option]
  password_lockout_notification_channels : string prop list option;
      [@option]
  password_max_age_days : float prop option; [@option]
  password_max_lockout_attempts : float prop option; [@option]
  password_min_age_minutes : float prop option; [@option]
  password_min_length : float prop option; [@option]
  password_min_lowercase : float prop option; [@option]
  password_min_number : float prop option; [@option]
  password_min_symbol : float prop option; [@option]
  password_min_uppercase : float prop option; [@option]
  password_show_lockout_failures : bool prop option; [@option]
  question_min_length : float prop option; [@option]
  question_recovery : string prop option; [@option]
  recovery_email_token : float prop option; [@option]
  skip_unlock : bool prop option; [@option]
  sms_recovery : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_password_default) -> ()

let yojson_of_okta_policy_password_default =
  (function
   | {
       call_recovery = v_call_recovery;
       email_recovery = v_email_recovery;
       id = v_id;
       password_auto_unlock_minutes = v_password_auto_unlock_minutes;
       password_dictionary_lookup = v_password_dictionary_lookup;
       password_exclude_first_name = v_password_exclude_first_name;
       password_exclude_last_name = v_password_exclude_last_name;
       password_exclude_username = v_password_exclude_username;
       password_expire_warn_days = v_password_expire_warn_days;
       password_history_count = v_password_history_count;
       password_lockout_notification_channels =
         v_password_lockout_notification_channels;
       password_max_age_days = v_password_max_age_days;
       password_max_lockout_attempts =
         v_password_max_lockout_attempts;
       password_min_age_minutes = v_password_min_age_minutes;
       password_min_length = v_password_min_length;
       password_min_lowercase = v_password_min_lowercase;
       password_min_number = v_password_min_number;
       password_min_symbol = v_password_min_symbol;
       password_min_uppercase = v_password_min_uppercase;
       password_show_lockout_failures =
         v_password_show_lockout_failures;
       question_min_length = v_question_min_length;
       question_recovery = v_question_recovery;
       recovery_email_token = v_recovery_email_token;
       skip_unlock = v_skip_unlock;
       sms_recovery = v_sms_recovery;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sms_recovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sms_recovery", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_unlock with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_unlock", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recovery_email_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "recovery_email_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_question_recovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "question_recovery", arg in
             bnd :: bnds
       in
       let bnds =
         match v_question_min_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "question_min_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_show_lockout_failures with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_show_lockout_failures", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_min_uppercase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_min_uppercase", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_min_symbol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_min_symbol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_min_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_min_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_min_lowercase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_min_lowercase", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_min_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_min_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_min_age_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_min_age_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_max_lockout_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_max_lockout_attempts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_max_age_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_max_age_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_lockout_notification_channels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "password_lockout_notification_channels", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_password_history_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_history_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_expire_warn_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_expire_warn_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_exclude_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_exclude_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_exclude_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_exclude_last_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_exclude_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_exclude_first_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_dictionary_lookup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_dictionary_lookup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_auto_unlock_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_auto_unlock_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_recovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_recovery", arg in
             bnd :: bnds
       in
       let bnds =
         match v_call_recovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "call_recovery", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_policy_password_default ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_password_default

[@@@deriving.end]

let okta_policy_password_default ?call_recovery ?email_recovery ?id
    ?password_auto_unlock_minutes ?password_dictionary_lookup
    ?password_exclude_first_name ?password_exclude_last_name
    ?password_exclude_username ?password_expire_warn_days
    ?password_history_count ?password_lockout_notification_channels
    ?password_max_age_days ?password_max_lockout_attempts
    ?password_min_age_minutes ?password_min_length
    ?password_min_lowercase ?password_min_number ?password_min_symbol
    ?password_min_uppercase ?password_show_lockout_failures
    ?question_min_length ?question_recovery ?recovery_email_token
    ?skip_unlock ?sms_recovery () : okta_policy_password_default =
  {
    call_recovery;
    email_recovery;
    id;
    password_auto_unlock_minutes;
    password_dictionary_lookup;
    password_exclude_first_name;
    password_exclude_last_name;
    password_exclude_username;
    password_expire_warn_days;
    password_history_count;
    password_lockout_notification_channels;
    password_max_age_days;
    password_max_lockout_attempts;
    password_min_age_minutes;
    password_min_length;
    password_min_lowercase;
    password_min_number;
    password_min_symbol;
    password_min_uppercase;
    password_show_lockout_failures;
    question_min_length;
    question_recovery;
    recovery_email_token;
    skip_unlock;
    sms_recovery;
  }

type t = {
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

let make ?call_recovery ?email_recovery ?id
    ?password_auto_unlock_minutes ?password_dictionary_lookup
    ?password_exclude_first_name ?password_exclude_last_name
    ?password_exclude_username ?password_expire_warn_days
    ?password_history_count ?password_lockout_notification_channels
    ?password_max_age_days ?password_max_lockout_attempts
    ?password_min_age_minutes ?password_min_length
    ?password_min_lowercase ?password_min_number ?password_min_symbol
    ?password_min_uppercase ?password_show_lockout_failures
    ?question_min_length ?question_recovery ?recovery_email_token
    ?skip_unlock ?sms_recovery __id =
  let __type = "okta_policy_password_default" in
  let __attrs =
    ({
       tf_name = __id;
       call_recovery = Prop.computed __type __id "call_recovery";
       default_auth_provider =
         Prop.computed __type __id "default_auth_provider";
       default_included_group_id =
         Prop.computed __type __id "default_included_group_id";
       description = Prop.computed __type __id "description";
       email_recovery = Prop.computed __type __id "email_recovery";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password_auto_unlock_minutes =
         Prop.computed __type __id "password_auto_unlock_minutes";
       password_dictionary_lookup =
         Prop.computed __type __id "password_dictionary_lookup";
       password_exclude_first_name =
         Prop.computed __type __id "password_exclude_first_name";
       password_exclude_last_name =
         Prop.computed __type __id "password_exclude_last_name";
       password_exclude_username =
         Prop.computed __type __id "password_exclude_username";
       password_expire_warn_days =
         Prop.computed __type __id "password_expire_warn_days";
       password_history_count =
         Prop.computed __type __id "password_history_count";
       password_lockout_notification_channels =
         Prop.computed __type __id
           "password_lockout_notification_channels";
       password_max_age_days =
         Prop.computed __type __id "password_max_age_days";
       password_max_lockout_attempts =
         Prop.computed __type __id "password_max_lockout_attempts";
       password_min_age_minutes =
         Prop.computed __type __id "password_min_age_minutes";
       password_min_length =
         Prop.computed __type __id "password_min_length";
       password_min_lowercase =
         Prop.computed __type __id "password_min_lowercase";
       password_min_number =
         Prop.computed __type __id "password_min_number";
       password_min_symbol =
         Prop.computed __type __id "password_min_symbol";
       password_min_uppercase =
         Prop.computed __type __id "password_min_uppercase";
       password_show_lockout_failures =
         Prop.computed __type __id "password_show_lockout_failures";
       priority = Prop.computed __type __id "priority";
       question_min_length =
         Prop.computed __type __id "question_min_length";
       question_recovery =
         Prop.computed __type __id "question_recovery";
       recovery_email_token =
         Prop.computed __type __id "recovery_email_token";
       skip_unlock = Prop.computed __type __id "skip_unlock";
       sms_recovery = Prop.computed __type __id "sms_recovery";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_password_default
        (okta_policy_password_default ?call_recovery ?email_recovery
           ?id ?password_auto_unlock_minutes
           ?password_dictionary_lookup ?password_exclude_first_name
           ?password_exclude_last_name ?password_exclude_username
           ?password_expire_warn_days ?password_history_count
           ?password_lockout_notification_channels
           ?password_max_age_days ?password_max_lockout_attempts
           ?password_min_age_minutes ?password_min_length
           ?password_min_lowercase ?password_min_number
           ?password_min_symbol ?password_min_uppercase
           ?password_show_lockout_failures ?question_min_length
           ?question_recovery ?recovery_email_token ?skip_unlock
           ?sms_recovery ());
    attrs = __attrs;
  }

let register ?tf_module ?call_recovery ?email_recovery ?id
    ?password_auto_unlock_minutes ?password_dictionary_lookup
    ?password_exclude_first_name ?password_exclude_last_name
    ?password_exclude_username ?password_expire_warn_days
    ?password_history_count ?password_lockout_notification_channels
    ?password_max_age_days ?password_max_lockout_attempts
    ?password_min_age_minutes ?password_min_length
    ?password_min_lowercase ?password_min_number ?password_min_symbol
    ?password_min_uppercase ?password_show_lockout_failures
    ?question_min_length ?question_recovery ?recovery_email_token
    ?skip_unlock ?sms_recovery __id =
  let (r : _ Tf_core.resource) =
    make ?call_recovery ?email_recovery ?id
      ?password_auto_unlock_minutes ?password_dictionary_lookup
      ?password_exclude_first_name ?password_exclude_last_name
      ?password_exclude_username ?password_expire_warn_days
      ?password_history_count ?password_lockout_notification_channels
      ?password_max_age_days ?password_max_lockout_attempts
      ?password_min_age_minutes ?password_min_length
      ?password_min_lowercase ?password_min_number
      ?password_min_symbol ?password_min_uppercase
      ?password_show_lockout_failures ?question_min_length
      ?question_recovery ?recovery_email_token ?skip_unlock
      ?sms_recovery __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
