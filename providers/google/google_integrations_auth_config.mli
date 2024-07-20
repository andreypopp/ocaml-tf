(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type client_certificate

val client_certificate :
  ?passphrase:string prop ->
  encrypted_private_key:string prop ->
  ssl_certificate:string prop ->
  unit ->
  client_certificate

type decrypted_credential__auth_token

val decrypted_credential__auth_token :
  ?token:string prop ->
  ?type_:string prop ->
  unit ->
  decrypted_credential__auth_token

type decrypted_credential__jwt

val decrypted_credential__jwt :
  ?jwt_header:string prop ->
  ?jwt_payload:string prop ->
  ?secret:string prop ->
  unit ->
  decrypted_credential__jwt

type decrypted_credential__oauth2_authorization_code

val decrypted_credential__oauth2_authorization_code :
  ?auth_endpoint:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?scope:string prop ->
  ?token_endpoint:string prop ->
  unit ->
  decrypted_credential__oauth2_authorization_code

type decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value

val decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value :
  ?string_value:string prop ->
  unit ->
  decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value

type decrypted_credential__oauth2_client_credentials__token_params__entries__key

val decrypted_credential__oauth2_client_credentials__token_params__entries__key :
  ?literal_value:
    decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value
    list ->
  unit ->
  decrypted_credential__oauth2_client_credentials__token_params__entries__key

type decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value

val decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value :
  ?string_value:string prop ->
  unit ->
  decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value

type decrypted_credential__oauth2_client_credentials__token_params__entries__value

val decrypted_credential__oauth2_client_credentials__token_params__entries__value :
  ?literal_value:
    decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value
    list ->
  unit ->
  decrypted_credential__oauth2_client_credentials__token_params__entries__value

type decrypted_credential__oauth2_client_credentials__token_params__entries

val decrypted_credential__oauth2_client_credentials__token_params__entries :
  ?key:
    decrypted_credential__oauth2_client_credentials__token_params__entries__key
    list ->
  ?value:
    decrypted_credential__oauth2_client_credentials__token_params__entries__value
    list ->
  unit ->
  decrypted_credential__oauth2_client_credentials__token_params__entries

type decrypted_credential__oauth2_client_credentials__token_params

val decrypted_credential__oauth2_client_credentials__token_params :
  ?entries:
    decrypted_credential__oauth2_client_credentials__token_params__entries
    list ->
  unit ->
  decrypted_credential__oauth2_client_credentials__token_params

type decrypted_credential__oauth2_client_credentials

val decrypted_credential__oauth2_client_credentials :
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?request_type:string prop ->
  ?scope:string prop ->
  ?token_endpoint:string prop ->
  ?token_params:
    decrypted_credential__oauth2_client_credentials__token_params
    list ->
  unit ->
  decrypted_credential__oauth2_client_credentials

type decrypted_credential__oidc_token

val decrypted_credential__oidc_token :
  ?audience:string prop ->
  ?service_account_email:string prop ->
  unit ->
  decrypted_credential__oidc_token

type decrypted_credential__service_account_credentials

val decrypted_credential__service_account_credentials :
  ?scope:string prop ->
  ?service_account:string prop ->
  unit ->
  decrypted_credential__service_account_credentials

type decrypted_credential__username_and_password

val decrypted_credential__username_and_password :
  ?password:string prop ->
  ?username:string prop ->
  unit ->
  decrypted_credential__username_and_password

type decrypted_credential

val decrypted_credential :
  ?auth_token:decrypted_credential__auth_token list ->
  ?jwt:decrypted_credential__jwt list ->
  ?oauth2_authorization_code:
    decrypted_credential__oauth2_authorization_code list ->
  ?oauth2_client_credentials:
    decrypted_credential__oauth2_client_credentials list ->
  ?oidc_token:decrypted_credential__oidc_token list ->
  ?service_account_credentials:
    decrypted_credential__service_account_credentials list ->
  ?username_and_password:
    decrypted_credential__username_and_password list ->
  credential_type:string prop ->
  unit ->
  decrypted_credential

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_integrations_auth_config

val google_integrations_auth_config :
  ?description:string prop ->
  ?expiry_notification_duration:string prop list ->
  ?id:string prop ->
  ?override_valid_time:string prop ->
  ?project:string prop ->
  ?visibility:string prop ->
  ?client_certificate:client_certificate list ->
  ?decrypted_credential:decrypted_credential list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  unit ->
  google_integrations_auth_config

val yojson_of_google_integrations_auth_config :
  google_integrations_auth_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_id : string prop;
  create_time : string prop;
  creator_email : string prop;
  credential_type : string prop;
  description : string prop;
  display_name : string prop;
  encrypted_credential : string prop;
  expiry_notification_duration : string list prop;
  id : string prop;
  last_modifier_email : string prop;
  location : string prop;
  name : string prop;
  override_valid_time : string prop;
  project : string prop;
  reason : string prop;
  state : string prop;
  update_time : string prop;
  valid_time : string prop;
  visibility : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?expiry_notification_duration:string prop list ->
  ?id:string prop ->
  ?override_valid_time:string prop ->
  ?project:string prop ->
  ?visibility:string prop ->
  ?client_certificate:client_certificate list ->
  ?decrypted_credential:decrypted_credential list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?expiry_notification_duration:string prop list ->
  ?id:string prop ->
  ?override_valid_time:string prop ->
  ?project:string prop ->
  ?visibility:string prop ->
  ?client_certificate:client_certificate list ->
  ?decrypted_credential:decrypted_credential list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
