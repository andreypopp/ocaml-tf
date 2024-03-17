(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_folder_settings__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_logging_folder_settings__timeouts *)

type google_logging_folder_settings = {
  disable_default_sink : bool prop option; [@option]
      (** If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed. *)
  folder : string prop;
      (** The folder for which to retrieve settings. *)
  id : string prop option; [@option]  (** id *)
  kms_key_name : string prop option; [@option]
      (** The resource name for the configured Cloud KMS key. *)
  storage_location : string prop option; [@option]
      (** The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided. *)
  timeouts : google_logging_folder_settings__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_folder_settings *)

type t = {
  disable_default_sink : bool prop;
  folder : string prop;
  id : string prop;
  kms_key_name : string prop;
  kms_service_account_id : string prop;
  logging_service_account_id : string prop;
  name : string prop;
  storage_location : string prop;
}

let google_logging_folder_settings ?disable_default_sink ?id
    ?kms_key_name ?storage_location ?timeouts ~folder __resource_id =
  let __resource_type = "google_logging_folder_settings" in
  let __resource =
    ({
       disable_default_sink;
       folder;
       id;
       kms_key_name;
       storage_location;
       timeouts;
     }
      : google_logging_folder_settings)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_folder_settings __resource);
  let __resource_attributes =
    ({
       disable_default_sink =
         Prop.computed __resource_type __resource_id
           "disable_default_sink";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_name =
         Prop.computed __resource_type __resource_id "kms_key_name";
       kms_service_account_id =
         Prop.computed __resource_type __resource_id
           "kms_service_account_id";
       logging_service_account_id =
         Prop.computed __resource_type __resource_id
           "logging_service_account_id";
       name = Prop.computed __resource_type __resource_id "name";
       storage_location =
         Prop.computed __resource_type __resource_id
           "storage_location";
     }
      : t)
  in
  __resource_attributes
