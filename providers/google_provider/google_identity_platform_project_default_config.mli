(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_project_default_config__sign_in__anonymous

type google_identity_platform_project_default_config__sign_in__email

type google_identity_platform_project_default_config__sign_in__phone_number

type google_identity_platform_project_default_config__sign_in__hash_config = {
  algorithm : string prop;  (** algorithm *)
  memory_cost : float prop;  (** memory_cost *)
  rounds : float prop;  (** rounds *)
  salt_separator : string prop;  (** salt_separator *)
  signer_key : string prop;  (** signer_key *)
}

type google_identity_platform_project_default_config__sign_in
type google_identity_platform_project_default_config__timeouts
type google_identity_platform_project_default_config

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
}

val google_identity_platform_project_default_config :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_identity_platform_project_default_config__timeouts ->
  sign_in:
    google_identity_platform_project_default_config__sign_in list ->
  string ->
  t
