(** Creates different types of captcha.
		~> **WARNING:** This feature is only available as a part of the Identity Engine. [Contact support](mailto:dev-inquiries@okta.com) for further information.
		This resource allows you to create and configure a CAPTCHA. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_captcha

val okta_captcha :
  ?id:string prop ->
  name:string prop ->
  secret_key:string prop ->
  site_key:string prop ->
  type_:string prop ->
  unit ->
  okta_captcha

val yojson_of_okta_captcha : okta_captcha -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  secret_key : string prop;
  site_key : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  secret_key:string prop ->
  site_key:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  secret_key:string prop ->
  site_key:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
