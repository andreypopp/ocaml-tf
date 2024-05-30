(** Manages Org-Wide CAPTCHA settings
~> **WARNING:** This feature is only available as a part of the Identity Engine. [Contact support](mailto:dev-inquiries@okta.com) for further information.
This resource allows you to configure which parts of the authentication flow requires users to pass the CAPTCHA logic.
CAPTCHA org-wide settings can be disabled by unsetting 'captcha_id' and 'enabled_for'. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_captcha_org_wide_settings

val okta_captcha_org_wide_settings :
  ?captcha_id:string prop ->
  ?enabled_for:string prop list ->
  ?id:string prop ->
  unit ->
  okta_captcha_org_wide_settings

val yojson_of_okta_captcha_org_wide_settings :
  okta_captcha_org_wide_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  captcha_id : string prop;
  enabled_for : string list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?captcha_id:string prop ->
  ?enabled_for:string prop list ->
  ?id:string prop ->
  string ->
  t

val make :
  ?captcha_id:string prop ->
  ?enabled_for:string prop list ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
