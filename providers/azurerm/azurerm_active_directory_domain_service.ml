(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type initial_replica_set = {
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** initial_replica_set *)

type notifications = {
  additional_recipients : string prop list option; [@option]
      (** additional_recipients *)
  notify_dc_admins : bool prop option; [@option]
      (** notify_dc_admins *)
  notify_global_admins : bool prop option; [@option]
      (** notify_global_admins *)
}
[@@deriving yojson_of]
(** notifications *)

type secure_ldap = {
  enabled : bool prop;  (** enabled *)
  external_access_enabled : bool prop option; [@option]
      (** external_access_enabled *)
  pfx_certificate : string prop;  (** pfx_certificate *)
  pfx_certificate_password : string prop;
      (** pfx_certificate_password *)
}
[@@deriving yojson_of]
(** secure_ldap *)

type security = {
  kerberos_armoring_enabled : bool prop option; [@option]
      (** kerberos_armoring_enabled *)
  kerberos_rc4_encryption_enabled : bool prop option; [@option]
      (** kerberos_rc4_encryption_enabled *)
  ntlm_v1_enabled : bool prop option; [@option]
      (** ntlm_v1_enabled *)
  sync_kerberos_passwords : bool prop option; [@option]
      (** sync_kerberos_passwords *)
  sync_ntlm_passwords : bool prop option; [@option]
      (** sync_ntlm_passwords *)
  sync_on_prem_passwords : bool prop option; [@option]
      (** sync_on_prem_passwords *)
  tls_v1_enabled : bool prop option; [@option]  (** tls_v1_enabled *)
}
[@@deriving yojson_of]
(** security *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_active_directory_domain_service = {
  domain_configuration_type : string prop option; [@option]
      (** domain_configuration_type *)
  domain_name : string prop;  (** domain_name *)
  filtered_sync_enabled : bool prop option; [@option]
      (** filtered_sync_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  initial_replica_set : initial_replica_set list;
  notifications : notifications list;
  secure_ldap : secure_ldap list;
  security : security list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service *)

let initial_replica_set ~subnet_id () : initial_replica_set =
  { subnet_id }

let notifications ?additional_recipients ?notify_dc_admins
    ?notify_global_admins () : notifications =
  { additional_recipients; notify_dc_admins; notify_global_admins }

let secure_ldap ?external_access_enabled ~enabled ~pfx_certificate
    ~pfx_certificate_password () : secure_ldap =
  {
    enabled;
    external_access_enabled;
    pfx_certificate;
    pfx_certificate_password;
  }

let security ?kerberos_armoring_enabled
    ?kerberos_rc4_encryption_enabled ?ntlm_v1_enabled
    ?sync_kerberos_passwords ?sync_ntlm_passwords
    ?sync_on_prem_passwords ?tls_v1_enabled () : security =
  {
    kerberos_armoring_enabled;
    kerberos_rc4_encryption_enabled;
    ntlm_v1_enabled;
    sync_kerberos_passwords;
    sync_ntlm_passwords;
    sync_on_prem_passwords;
    tls_v1_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_active_directory_domain_service
    ?domain_configuration_type ?filtered_sync_enabled ?id ?tags
    ?timeouts ~domain_name ~location ~name ~resource_group_name ~sku
    ~initial_replica_set ~notifications ~secure_ldap ~security () :
    azurerm_active_directory_domain_service =
  {
    domain_configuration_type;
    domain_name;
    filtered_sync_enabled;
    id;
    location;
    name;
    resource_group_name;
    sku;
    tags;
    initial_replica_set;
    notifications;
    secure_ldap;
    security;
    timeouts;
  }

type t = {
  deployment_id : string prop;
  domain_configuration_type : string prop;
  domain_name : string prop;
  filtered_sync_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
  sku : string prop;
  sync_owner : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  version : float prop;
}

let register ?tf_module ?domain_configuration_type
    ?filtered_sync_enabled ?id ?tags ?timeouts ~domain_name ~location
    ~name ~resource_group_name ~sku ~initial_replica_set
    ~notifications ~secure_ldap ~security __resource_id =
  let __resource_type = "azurerm_active_directory_domain_service" in
  let __resource =
    azurerm_active_directory_domain_service
      ?domain_configuration_type ?filtered_sync_enabled ?id ?tags
      ?timeouts ~domain_name ~location ~name ~resource_group_name
      ~sku ~initial_replica_set ~notifications ~secure_ldap ~security
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_active_directory_domain_service __resource);
  let __resource_attributes =
    ({
       deployment_id =
         Prop.computed __resource_type __resource_id "deployment_id";
       domain_configuration_type =
         Prop.computed __resource_type __resource_id
           "domain_configuration_type";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       filtered_sync_enabled =
         Prop.computed __resource_type __resource_id
           "filtered_sync_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       sku = Prop.computed __resource_type __resource_id "sku";
       sync_owner =
         Prop.computed __resource_type __resource_id "sync_owner";
       tags = Prop.computed __resource_type __resource_id "tags";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
