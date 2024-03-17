(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_organization_settings__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_logging_organization_settings__timeouts *)

type google_logging_organization_settings = {
  disable_default_sink : bool prop option; [@option]
      (** If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed. *)
  id : string prop option; [@option]  (** id *)
  kms_key_name : string prop option; [@option]
      (** The resource name for the configured Cloud KMS key. *)
  organization : string prop;
      (** The organization for which to retrieve or configure settings. *)
  storage_location : string prop option; [@option]
      (** The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided. *)
  timeouts : google_logging_organization_settings__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_organization_settings *)

let google_logging_organization_settings ?disable_default_sink ?id
    ?kms_key_name ?storage_location ?timeouts ~organization
    __resource_id =
  let __resource_type = "google_logging_organization_settings" in
  let __resource =
    {
      disable_default_sink;
      id;
      kms_key_name;
      organization;
      storage_location;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_organization_settings __resource);
  ()
