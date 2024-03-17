(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_app_engine_domain_mapping__ssl_settings = {
  certificate_id : string option; [@option]
      (** ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will
remove SSL support.
By default, a managed certificate is automatically created for every domain mapping. To omit SSL support
or to configure SSL manually, specify 'SslManagementType.MANUAL' on a 'CREATE' or 'UPDATE' request. You must be
authorized to administer the 'AuthorizedCertificate' resource to manually map it to a DomainMapping resource.
Example: 12345. *)
  pending_managed_certificate_id : string;
      (** ID of the managed 'AuthorizedCertificate' resource currently being provisioned, if applicable. Until the new
managed certificate has been successfully provisioned, the previous SSL state will be preserved. Once the
provisioning process completes, the 'certificateId' field will reflect the new managed certificate and this
field will be left empty. To remove SSL support while there is still a pending managed certificate, clear the
'certificateId' field with an update request. *)
  ssl_management_type : string;
      (** SSL management type for this domain. If 'AUTOMATIC', a managed certificate is automatically provisioned.
If 'MANUAL', 'certificateId' must be manually specified in order to configure SSL for this domain. Possible values: [AUTOMATIC, MANUAL] *)
}
[@@deriving yojson_of]
(** SSL configuration for this domain. If unconfigured, this domain will not serve with SSL. *)

type google_app_engine_domain_mapping__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_domain_mapping__timeouts *)

type google_app_engine_domain_mapping__resource_records = {
  name : string;  (** name *)
  rrdata : string;  (** rrdata *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_app_engine_domain_mapping = {
  domain_name : string;
      (** Relative name of the domain serving the application. Example: example.com. *)
  override_strategy : string option; [@option]
      (** Whether the domain creation should override any existing mappings for this domain.
By default, overrides are rejected. Default value: STRICT Possible values: [STRICT, OVERRIDE] *)
  ssl_settings : google_app_engine_domain_mapping__ssl_settings list;
  timeouts : google_app_engine_domain_mapping__timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_domain_mapping *)

let google_app_engine_domain_mapping ?override_strategy ?timeouts
    ~domain_name ~ssl_settings __resource_id =
  let __resource_type = "google_app_engine_domain_mapping" in
  let __resource =
    { domain_name; override_strategy; ssl_settings; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_domain_mapping __resource);
  ()
