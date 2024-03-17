(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_project_default_config__sign_in__anonymous

type google_identity_platform_project_default_config__sign_in__email

type google_identity_platform_project_default_config__sign_in__phone_number

type google_identity_platform_project_default_config__sign_in__hash_config = {
  algorithm : string;  (** algorithm *)
  memory_cost : float;  (** memory_cost *)
  rounds : float;  (** rounds *)
  salt_separator : string;  (** salt_separator *)
  signer_key : string;  (** signer_key *)
}

type google_identity_platform_project_default_config__sign_in
type google_identity_platform_project_default_config__timeouts
type google_identity_platform_project_default_config

val google_identity_platform_project_default_config :
  ?id:string ->
  ?project:string ->
  ?timeouts:google_identity_platform_project_default_config__timeouts ->
  sign_in:
    google_identity_platform_project_default_config__sign_in list ->
  string ->
  unit
