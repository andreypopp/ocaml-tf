(** Get a SAML IdP from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_idp_saml

val okta_idp_saml :
  ?id:string prop -> ?name:string prop -> unit -> okta_idp_saml

val yojson_of_okta_idp_saml : okta_idp_saml -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acs_binding : string prop;
  acs_type : string prop;
  audience : string prop;
  id : string prop;
  issuer : string prop;
  issuer_mode : string prop;
  kid : string prop;
  name : string prop;
  sso_binding : string prop;
  sso_destination : string prop;
  sso_url : string prop;
  subject_filter : string prop;
  subject_format : string list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
