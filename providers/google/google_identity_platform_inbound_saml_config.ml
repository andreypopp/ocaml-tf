(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_identity_platform_inbound_saml_config__idp_config__idp_certificates = {
  x509_certificate : string prop option; [@option]
      (** The IdP's x509 certificate. *)
}
[@@deriving yojson_of]
(** The IdP's certificate data to verify the signature in the SAMLResponse issued by the IDP. *)

type google_identity_platform_inbound_saml_config__idp_config = {
  idp_entity_id : string prop;
      (** Unique identifier for all SAML entities *)
  sign_request : bool prop option; [@option]
      (** Indicates if outbounding SAMLRequest should be signed. *)
  sso_url : string prop;
      (** URL to send Authentication request to. *)
  idp_certificates :
    google_identity_platform_inbound_saml_config__idp_config__idp_certificates
    list;
}
[@@deriving yojson_of]
(** SAML IdP configuration when the project acts as the relying party *)

type google_identity_platform_inbound_saml_config__sp_config__sp_certificates = {
  x509_certificate : string prop;  (** x509_certificate *)
}
[@@deriving yojson_of]

type google_identity_platform_inbound_saml_config__sp_config = {
  callback_uri : string prop option; [@option]
      (** Callback URI where responses from IDP are handled. Must start with 'https://'. *)
  sp_certificates :
    google_identity_platform_inbound_saml_config__sp_config__sp_certificates
    list;
      (** The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP. *)
  sp_entity_id : string prop option; [@option]
      (** Unique identifier for all SAML entities. *)
}
[@@deriving yojson_of]
(** SAML SP (Service Provider) configuration when the project acts as the relying party to receive
and accept an authentication assertion issued by a SAML identity provider. *)

type google_identity_platform_inbound_saml_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_identity_platform_inbound_saml_config__timeouts *)

type google_identity_platform_inbound_saml_config = {
  display_name : string prop;  (** Human friendly display name. *)
  enabled : bool prop option; [@option]
      (** If this config allows users to sign in with the provider. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
hyphens, underscores or periods. The part after 'saml.' must also start with a lowercase letter, end with an
alphanumeric character, and have at least 2 characters. *)
  project : string prop option; [@option]  (** project *)
  idp_config :
    google_identity_platform_inbound_saml_config__idp_config list;
  sp_config :
    google_identity_platform_inbound_saml_config__sp_config list;
  timeouts :
    google_identity_platform_inbound_saml_config__timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_inbound_saml_config *)

type t = {
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let google_identity_platform_inbound_saml_config ?enabled ?id
    ?project ?timeouts ~display_name ~name ~idp_config ~sp_config
    __resource_id =
  let __resource_type =
    "google_identity_platform_inbound_saml_config"
  in
  let __resource =
    ({
       display_name;
       enabled;
       id;
       name;
       project;
       idp_config;
       sp_config;
       timeouts;
     }
      : google_identity_platform_inbound_saml_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_identity_platform_inbound_saml_config
       __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
