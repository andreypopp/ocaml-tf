(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_folder_settings__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_logging_folder_settings__timeouts *)

type google_logging_folder_settings = {
  disable_default_sink : bool option; [@option]
      (** If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed. *)
  folder : string;  (** The folder for which to retrieve settings. *)
  id : string option; [@option]  (** id *)
  kms_key_name : string option; [@option]
      (** The resource name for the configured Cloud KMS key. *)
  storage_location : string option; [@option]
      (** The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided. *)
  timeouts : google_logging_folder_settings__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_folder_settings *)

let google_logging_folder_settings ?disable_default_sink ?id
    ?kms_key_name ?storage_location ?timeouts ~folder __resource_id =
  let __resource_type = "google_logging_folder_settings" in
  let __resource =
    {
      disable_default_sink;
      folder;
      id;
      kms_key_name;
      storage_location;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_folder_settings __resource);
  ()
