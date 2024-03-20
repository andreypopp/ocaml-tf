(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?override_strategy ?project ?timeouts ~domain_name
    ~ssl_settings __id =
  let __type = "google_app_engine_domain_mapping" in
  let __attrs =
    ({
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       override_strategy =
         Prop.computed __type __id "override_strategy";
       project = Prop.computed __type __id "project";
       resource_records =
         Prop.computed __type __id "resource_records";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_domain_mapping
        (google_app_engine_domain_mapping ?id ?override_strategy
           ?project ?timeouts ~domain_name ~ssl_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?override_strategy ?project ?timeouts
    ~domain_name ~ssl_settings __id =
  let (r : _ Tf_core.resource) =
    make ?id ?override_strategy ?project ?timeouts ~domain_name
      ~ssl_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
