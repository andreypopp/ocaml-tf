(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type account_takeover_risk_configuration__actions__high_action

val account_takeover_risk_configuration__actions__high_action :
  event_action:string prop ->
  notify:bool prop ->
  unit ->
  account_takeover_risk_configuration__actions__high_action

type account_takeover_risk_configuration__actions__low_action

val account_takeover_risk_configuration__actions__low_action :
  event_action:string prop ->
  notify:bool prop ->
  unit ->
  account_takeover_risk_configuration__actions__low_action

type account_takeover_risk_configuration__actions__medium_action

val account_takeover_risk_configuration__actions__medium_action :
  event_action:string prop ->
  notify:bool prop ->
  unit ->
  account_takeover_risk_configuration__actions__medium_action

type account_takeover_risk_configuration__actions

val account_takeover_risk_configuration__actions :
  ?high_action:
    account_takeover_risk_configuration__actions__high_action list ->
  ?low_action:
    account_takeover_risk_configuration__actions__low_action list ->
  ?medium_action:
    account_takeover_risk_configuration__actions__medium_action list ->
  unit ->
  account_takeover_risk_configuration__actions

type account_takeover_risk_configuration__notify_configuration__block_email

val account_takeover_risk_configuration__notify_configuration__block_email :
  html_body:string prop ->
  subject:string prop ->
  text_body:string prop ->
  unit ->
  account_takeover_risk_configuration__notify_configuration__block_email

type account_takeover_risk_configuration__notify_configuration__mfa_email

val account_takeover_risk_configuration__notify_configuration__mfa_email :
  html_body:string prop ->
  subject:string prop ->
  text_body:string prop ->
  unit ->
  account_takeover_risk_configuration__notify_configuration__mfa_email

type account_takeover_risk_configuration__notify_configuration__no_action_email

val account_takeover_risk_configuration__notify_configuration__no_action_email :
  html_body:string prop ->
  subject:string prop ->
  text_body:string prop ->
  unit ->
  account_takeover_risk_configuration__notify_configuration__no_action_email

type account_takeover_risk_configuration__notify_configuration

val account_takeover_risk_configuration__notify_configuration :
  ?from:string prop ->
  ?reply_to:string prop ->
  ?block_email:
    account_takeover_risk_configuration__notify_configuration__block_email
    list ->
  ?mfa_email:
    account_takeover_risk_configuration__notify_configuration__mfa_email
    list ->
  ?no_action_email:
    account_takeover_risk_configuration__notify_configuration__no_action_email
    list ->
  source_arn:string prop ->
  unit ->
  account_takeover_risk_configuration__notify_configuration

type account_takeover_risk_configuration

val account_takeover_risk_configuration :
  actions:account_takeover_risk_configuration__actions list ->
  notify_configuration:
    account_takeover_risk_configuration__notify_configuration list ->
  unit ->
  account_takeover_risk_configuration

type compromised_credentials_risk_configuration__actions

val compromised_credentials_risk_configuration__actions :
  event_action:string prop ->
  unit ->
  compromised_credentials_risk_configuration__actions

type compromised_credentials_risk_configuration

val compromised_credentials_risk_configuration :
  ?event_filter:string prop list ->
  actions:compromised_credentials_risk_configuration__actions list ->
  unit ->
  compromised_credentials_risk_configuration

type risk_exception_configuration

val risk_exception_configuration :
  ?blocked_ip_range_list:string prop list ->
  ?skipped_ip_range_list:string prop list ->
  unit ->
  risk_exception_configuration

type aws_cognito_risk_configuration

val aws_cognito_risk_configuration :
  ?client_id:string prop ->
  ?id:string prop ->
  ?account_takeover_risk_configuration:
    account_takeover_risk_configuration list ->
  ?compromised_credentials_risk_configuration:
    compromised_credentials_risk_configuration list ->
  ?risk_exception_configuration:risk_exception_configuration list ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_risk_configuration

val yojson_of_aws_cognito_risk_configuration :
  aws_cognito_risk_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  id : string prop;
  user_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_id:string prop ->
  ?id:string prop ->
  ?account_takeover_risk_configuration:
    account_takeover_risk_configuration list ->
  ?compromised_credentials_risk_configuration:
    compromised_credentials_risk_configuration list ->
  ?risk_exception_configuration:risk_exception_configuration list ->
  user_pool_id:string prop ->
  string ->
  t

val make :
  ?client_id:string prop ->
  ?id:string prop ->
  ?account_takeover_risk_configuration:
    account_takeover_risk_configuration list ->
  ?compromised_credentials_risk_configuration:
    compromised_credentials_risk_configuration list ->
  ?risk_exception_configuration:risk_exception_configuration list ->
  user_pool_id:string prop ->
  string ->
  t Tf_core.resource
