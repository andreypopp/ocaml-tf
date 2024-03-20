(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sign_in__hash_config = {
  algorithm : string prop;  (** algorithm *)
  memory_cost : float prop;  (** memory_cost *)
  rounds : float prop;  (** rounds *)
  salt_separator : string prop;  (** salt_separator *)
  signer_key : string prop;  (** signer_key *)
}

[@@@deriving.end]

type sign_in__anonymous

val sign_in__anonymous :
  enabled:bool prop -> unit -> sign_in__anonymous

type sign_in__email

val sign_in__email :
  ?enabled:bool prop ->
  ?password_required:bool prop ->
  unit ->
  sign_in__email

type sign_in__phone_number

val sign_in__phone_number :
  ?enabled:bool prop ->
  ?test_phone_numbers:(string * string prop) list ->
  unit ->
  sign_in__phone_number

type sign_in

val sign_in :
  ?allow_duplicate_emails:bool prop ->
  anonymous:sign_in__anonymous list ->
  email:sign_in__email list ->
  phone_number:sign_in__phone_number list ->
  unit ->
  sign_in

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_identity_platform_project_default_config

val google_identity_platform_project_default_config :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  sign_in:sign_in list ->
  unit ->
  google_identity_platform_project_default_config

val yojson_of_google_identity_platform_project_default_config :
  google_identity_platform_project_default_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  sign_in:sign_in list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  sign_in:sign_in list ->
  string ->
  t Tf_core.resource
