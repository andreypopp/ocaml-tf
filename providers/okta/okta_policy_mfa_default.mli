(** Configures default MFA Policy.
This resource allows you to configure default MFA Policy.
~> Requires Org Feature Flag 'OKTA_MFA_POLICY'. [Contact support](mailto:dev-inquiries@okta.com) to have this feature flag ***enabled***.
~> Unless Org Feature Flag 'ENG_ENABLE_OPTIONAL_PASSWORD_ENROLLMENT' is ***disabled*** 'okta_password' or 'okta_email' must be present and its 'enroll' value set to 'REQUIRED'. [Contact support](mailto:dev-inquiries@okta.com) to have this feature flag ***disabled***. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_mfa_default

val okta_policy_mfa_default :
  ?duo:(string * string prop) list ->
  ?external_idp:(string * string prop) list ->
  ?fido_u2f:(string * string prop) list ->
  ?fido_webauthn:(string * string prop) list ->
  ?google_otp:(string * string prop) list ->
  ?hotp:(string * string prop) list ->
  ?id:string prop ->
  ?is_oie:bool prop ->
  ?okta_call:(string * string prop) list ->
  ?okta_email:(string * string prop) list ->
  ?okta_otp:(string * string prop) list ->
  ?okta_password:(string * string prop) list ->
  ?okta_push:(string * string prop) list ->
  ?okta_question:(string * string prop) list ->
  ?okta_sms:(string * string prop) list ->
  ?okta_verify:(string * string prop) list ->
  ?onprem_mfa:(string * string prop) list ->
  ?phone_number:(string * string prop) list ->
  ?rsa_token:(string * string prop) list ->
  ?security_question:(string * string prop) list ->
  ?symantec_vip:(string * string prop) list ->
  ?webauthn:(string * string prop) list ->
  ?yubikey_token:(string * string prop) list ->
  unit ->
  okta_policy_mfa_default

val yojson_of_okta_policy_mfa_default :
  okta_policy_mfa_default -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_included_group_id : string prop;
  description : string prop;
  duo : (string * string) list prop;
  external_idp : (string * string) list prop;
  fido_u2f : (string * string) list prop;
  fido_webauthn : (string * string) list prop;
  google_otp : (string * string) list prop;
  hotp : (string * string) list prop;
  id : string prop;
  is_oie : bool prop;
  name : string prop;
  okta_call : (string * string) list prop;
  okta_email : (string * string) list prop;
  okta_otp : (string * string) list prop;
  okta_password : (string * string) list prop;
  okta_push : (string * string) list prop;
  okta_question : (string * string) list prop;
  okta_sms : (string * string) list prop;
  okta_verify : (string * string) list prop;
  onprem_mfa : (string * string) list prop;
  phone_number : (string * string) list prop;
  priority : float prop;
  rsa_token : (string * string) list prop;
  security_question : (string * string) list prop;
  status : string prop;
  symantec_vip : (string * string) list prop;
  webauthn : (string * string) list prop;
  yubikey_token : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?duo:(string * string prop) list ->
  ?external_idp:(string * string prop) list ->
  ?fido_u2f:(string * string prop) list ->
  ?fido_webauthn:(string * string prop) list ->
  ?google_otp:(string * string prop) list ->
  ?hotp:(string * string prop) list ->
  ?id:string prop ->
  ?is_oie:bool prop ->
  ?okta_call:(string * string prop) list ->
  ?okta_email:(string * string prop) list ->
  ?okta_otp:(string * string prop) list ->
  ?okta_password:(string * string prop) list ->
  ?okta_push:(string * string prop) list ->
  ?okta_question:(string * string prop) list ->
  ?okta_sms:(string * string prop) list ->
  ?okta_verify:(string * string prop) list ->
  ?onprem_mfa:(string * string prop) list ->
  ?phone_number:(string * string prop) list ->
  ?rsa_token:(string * string prop) list ->
  ?security_question:(string * string prop) list ->
  ?symantec_vip:(string * string prop) list ->
  ?webauthn:(string * string prop) list ->
  ?yubikey_token:(string * string prop) list ->
  string ->
  t

val make :
  ?duo:(string * string prop) list ->
  ?external_idp:(string * string prop) list ->
  ?fido_u2f:(string * string prop) list ->
  ?fido_webauthn:(string * string prop) list ->
  ?google_otp:(string * string prop) list ->
  ?hotp:(string * string prop) list ->
  ?id:string prop ->
  ?is_oie:bool prop ->
  ?okta_call:(string * string prop) list ->
  ?okta_email:(string * string prop) list ->
  ?okta_otp:(string * string prop) list ->
  ?okta_password:(string * string prop) list ->
  ?okta_push:(string * string prop) list ->
  ?okta_question:(string * string prop) list ->
  ?okta_sms:(string * string prop) list ->
  ?okta_verify:(string * string prop) list ->
  ?onprem_mfa:(string * string prop) list ->
  ?phone_number:(string * string prop) list ->
  ?rsa_token:(string * string prop) list ->
  ?security_question:(string * string prop) list ->
  ?symantec_vip:(string * string prop) list ->
  ?webauthn:(string * string prop) list ->
  ?yubikey_token:(string * string prop) list ->
  string ->
  t Tf_core.resource
