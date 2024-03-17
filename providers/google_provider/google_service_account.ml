(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_service_account__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** google_service_account__timeouts *)

type google_service_account = {
  account_id : string;
      (** The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created. *)
  create_ignore_already_exists : bool option; [@option]
      (** If set to true, skip service account creation if a service account with the same email already exists. *)
  description : string option; [@option]
      (** A text description of the service account. Must be less than or equal to 256 UTF-8 bytes. *)
  disabled : bool option; [@option]
      (** Whether the service account is disabled. Defaults to false *)
  display_name : string option; [@option]
      (** The display name for the service account. Can be updated without creating a new resource. *)
  id : string option; [@option]  (** id *)
  project : string option; [@option]
      (** The ID of the project that the service account will be created in. Defaults to the provider project configuration. *)
  timeouts : google_service_account__timeouts option;
}
[@@deriving yojson_of]
(** google_service_account *)

let google_service_account ?create_ignore_already_exists ?description
    ?disabled ?display_name ?id ?project ?timeouts ~account_id
    __resource_id =
  let __resource_type = "google_service_account" in
  let __resource =
    {
      account_id;
      create_ignore_already_exists;
      description;
      disabled;
      display_name;
      id;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_account __resource);
  ()
