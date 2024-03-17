(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_identity_platform_project_default_config__sign_in__anonymous = {
  enabled : bool prop;
      (** Whether anonymous user auth is enabled for the project or not. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating an anonymous user. *)

type google_identity_platform_project_default_config__sign_in__email = {
  enabled : bool prop option; [@option]
      (** Whether email auth is enabled for the project or not. *)
  password_required : bool prop option; [@option]
      (** Whether a password is required for email auth or not. If true, both an email and
password must be provided to sign in. If false, a user may sign in via either
email/password or email link. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating a user by their email address. *)

type google_identity_platform_project_default_config__sign_in__phone_number = {
  enabled : bool prop option; [@option]
      (** Whether phone number auth is enabled for the project or not. *)
  test_phone_numbers : (string * string prop) list option; [@option]
      (** A map of <test phone number, fake code> that can be used for phone auth testing. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticated a user by their phone number. *)

type google_identity_platform_project_default_config__sign_in__hash_config = {
  algorithm : string prop;  (** algorithm *)
  memory_cost : float prop;  (** memory_cost *)
  rounds : float prop;  (** rounds *)
  salt_separator : string prop;  (** salt_separator *)
  signer_key : string prop;  (** signer_key *)
}
[@@deriving yojson_of]

type google_identity_platform_project_default_config__sign_in = {
  allow_duplicate_emails : bool prop option; [@option]
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_identity_platform_project_default_config__timeouts *)

type google_identity_platform_project_default_config = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  sign_in :
    google_identity_platform_project_default_config__sign_in list;
  timeouts :
    google_identity_platform_project_default_config__timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_project_default_config *)

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
}

let google_identity_platform_project_default_config ?id ?project
    ?timeouts ~sign_in __resource_id =
  let __resource_type =
    "google_identity_platform_project_default_config"
  in
  let __resource =
    ({ id; project; sign_in; timeouts }
      : google_identity_platform_project_default_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_identity_platform_project_default_config
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
