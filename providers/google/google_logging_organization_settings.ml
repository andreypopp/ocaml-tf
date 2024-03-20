(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_logging_organization_settings *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_logging_organization_settings ?disable_default_sink ?id
    ?kms_key_name ?storage_location ?timeouts ~organization () :
    google_logging_organization_settings =
  {
    disable_default_sink;
    id;
    kms_key_name;
    organization;
    storage_location;
    timeouts;
  }

type t = {
  disable_default_sink : bool prop;
  id : string prop;
  kms_key_name : string prop;
  kms_service_account_id : string prop;
  logging_service_account_id : string prop;
  name : string prop;
  organization : string prop;
  storage_location : string prop;
}

let make ?disable_default_sink ?id ?kms_key_name ?storage_location
    ?timeouts ~organization __id =
  let __type = "google_logging_organization_settings" in
  let __attrs =
    ({
       disable_default_sink =
         Prop.computed __type __id "disable_default_sink";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       kms_service_account_id =
         Prop.computed __type __id "kms_service_account_id";
       logging_service_account_id =
         Prop.computed __type __id "logging_service_account_id";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       storage_location =
         Prop.computed __type __id "storage_location";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_organization_settings
        (google_logging_organization_settings ?disable_default_sink
           ?id ?kms_key_name ?storage_location ?timeouts
           ~organization ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_default_sink ?id ?kms_key_name
    ?storage_location ?timeouts ~organization __id =
  let (r : _ Tf_core.resource) =
    make ?disable_default_sink ?id ?kms_key_name ?storage_location
      ?timeouts ~organization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
