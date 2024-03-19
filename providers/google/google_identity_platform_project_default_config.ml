(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type sign_in__anonymous = {
  enabled : bool prop;
      (** Whether anonymous user auth is enabled for the project or not. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating an anonymous user. *)

type sign_in__email = {
  enabled : bool prop option; [@option]
      (** Whether email auth is enabled for the project or not. *)
  password_required : bool prop option; [@option]
      (** Whether a password is required for email auth or not. If true, both an email and
password must be provided to sign in. If false, a user may sign in via either
email/password or email link. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating a user by their email address. *)

type sign_in__phone_number = {
  enabled : bool prop option; [@option]
      (** Whether phone number auth is enabled for the project or not. *)
  test_phone_numbers : (string * string prop) list option; [@option]
      (** A map of <test phone number, fake code> that can be used for phone auth testing. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticated a user by their phone number. *)

type sign_in__hash_config = {
  algorithm : string prop;  (** algorithm *)
  memory_cost : float prop;  (** memory_cost *)
  rounds : float prop;  (** rounds *)
  salt_separator : string prop;  (** salt_separator *)
  signer_key : string prop;  (** signer_key *)
}
[@@deriving yojson_of]

type sign_in = {
  allow_duplicate_emails : bool prop option; [@option]
      (** Whether to allow more than one account to have the same email. *)
  anonymous : sign_in__anonymous list;
  email : sign_in__email list;
  phone_number : sign_in__phone_number list;
}
[@@deriving yojson_of]
(** Configuration related to local sign in methods. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_identity_platform_project_default_config = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  sign_in : sign_in list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_project_default_config *)

let sign_in__anonymous ~enabled () : sign_in__anonymous = { enabled }

let sign_in__email ?enabled ?password_required () : sign_in__email =
  { enabled; password_required }

let sign_in__phone_number ?enabled ?test_phone_numbers () :
    sign_in__phone_number =
  { enabled; test_phone_numbers }

let sign_in ?allow_duplicate_emails ~anonymous ~email ~phone_number
    () : sign_in =
  { allow_duplicate_emails; anonymous; email; phone_number }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_project_default_config ?id ?project
    ?timeouts ~sign_in () :
    google_identity_platform_project_default_config =
  { id; project; sign_in; timeouts }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
}

let register ?tf_module ?id ?project ?timeouts ~sign_in __resource_id
    =
  let __resource_type =
    "google_identity_platform_project_default_config"
  in
  let __resource =
    google_identity_platform_project_default_config ?id ?project
      ?timeouts ~sign_in ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
