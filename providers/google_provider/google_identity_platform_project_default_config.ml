(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_identity_platform_project_default_config__sign_in__anonymous = {
  enabled : bool;
      (** Whether anonymous user auth is enabled for the project or not. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating an anonymous user. *)

type google_identity_platform_project_default_config__sign_in__email = {
  enabled : bool option; [@option]
      (** Whether email auth is enabled for the project or not. *)
  password_required : bool option; [@option]
      (** Whether a password is required for email auth or not. If true, both an email and
password must be provided to sign in. If false, a user may sign in via either
email/password or email link. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating a user by their email address. *)

type google_identity_platform_project_default_config__sign_in__phone_number = {
  enabled : bool option; [@option]
      (** Whether phone number auth is enabled for the project or not. *)
  test_phone_numbers : (string * string) list option; [@option]
      (** A map of <test phone number, fake code> that can be used for phone auth testing. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticated a user by their phone number. *)

type google_identity_platform_project_default_config__sign_in__hash_config = {
  algorithm : string;  (** algorithm *)
  memory_cost : float;  (** memory_cost *)
  rounds : float;  (** rounds *)
  salt_separator : string;  (** salt_separator *)
  signer_key : string;  (** signer_key *)
}
[@@deriving yojson_of]

type google_identity_platform_project_default_config__sign_in = {
  allow_duplicate_emails : bool option; [@option]
      (** Whether to allow more than one account to have the same email. *)
  hash_config :
    google_identity_platform_project_default_config__sign_in__hash_config
    list;
      (** Output only. Hash config information. *)
  anonymous :
    google_identity_platform_project_default_config__sign_in__anonymous
    list;
  email :
    google_identity_platform_project_default_config__sign_in__email
    list;
  phone_number :
    google_identity_platform_project_default_config__sign_in__phone_number
    list;
}
[@@deriving yojson_of]
(** Configuration related to local sign in methods. *)

type google_identity_platform_project_default_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_identity_platform_project_default_config__timeouts *)

type google_identity_platform_project_default_config = {
  sign_in :
    google_identity_platform_project_default_config__sign_in list;
  timeouts :
    google_identity_platform_project_default_config__timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_project_default_config *)

let google_identity_platform_project_default_config ?timeouts
    ~sign_in __resource_id =
  let __resource_type =
    "google_identity_platform_project_default_config"
  in
  let __resource = { sign_in; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_identity_platform_project_default_config
       __resource);
  ()