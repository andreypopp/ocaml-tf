(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ssl_settings = {
  certificate_id : string prop option; [@option]
      (** ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will
remove SSL support.
By default, a managed certificate is automatically created for every domain mapping. To omit SSL support
or to configure SSL manually, specify 'SslManagementType.MANUAL' on a 'CREATE' or 'UPDATE' request. You must be
authorized to administer the 'AuthorizedCertificate' resource to manually map it to a DomainMapping resource.
Example: 12345. *)
  ssl_management_type : string prop;
      (** SSL management type for this domain. If 'AUTOMATIC', a managed certificate is automatically provisioned.
If 'MANUAL', 'certificateId' must be manually specified in order to configure SSL for this domain. Possible values: [AUTOMATIC, MANUAL] *)
}
[@@deriving yojson_of]
(** SSL configuration for this domain. If unconfigured, this domain will not serve with SSL. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type resource_records = {
  name : string prop;  (** name *)
  rrdata : string prop;  (** rrdata *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_app_engine_domain_mapping = {
  domain_name : string prop;
      (** Relative name of the domain serving the application. Example: example.com. *)
  id : string prop option; [@option]  (** id *)
  override_strategy : string prop option; [@option]
      (** Whether the domain creation should override any existing mappings for this domain.
By default, overrides are rejected. Default value: STRICT Possible values: [STRICT, OVERRIDE] *)
  project : string prop option; [@option]  (** project *)
  ssl_settings : ssl_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_domain_mapping *)

let ssl_settings ?certificate_id ~ssl_management_type () :
    ssl_settings =
  { certificate_id; ssl_management_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_domain_mapping ?id ?override_strategy ?project
    ?timeouts ~domain_name ~ssl_settings () :
    google_app_engine_domain_mapping =
  {
    domain_name;
    id;
    override_strategy;
    project;
    ssl_settings;
    timeouts;
  }

type t = {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  override_strategy : string prop;
  project : string prop;
  resource_records : resource_records list prop;
}

let register ?tf_module ?id ?override_strategy ?project ?timeouts
    ~domain_name ~ssl_settings __resource_id =
  let __resource_type = "google_app_engine_domain_mapping" in
  let __resource =
    google_app_engine_domain_mapping ?id ?override_strategy ?project
      ?timeouts ~domain_name ~ssl_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_domain_mapping __resource);
  let __resource_attributes =
    ({
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       override_strategy =
         Prop.computed __resource_type __resource_id
           "override_strategy";
       project =
         Prop.computed __resource_type __resource_id "project";
       resource_records =
         Prop.computed __resource_type __resource_id
           "resource_records";
     }
      : t)
  in
  __resource_attributes
