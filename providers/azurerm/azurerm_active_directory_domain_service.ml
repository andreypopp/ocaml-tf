(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?domain_configuration_type ?filtered_sync_enabled ?id ?tags
    ?timeouts ~domain_name ~location ~name ~resource_group_name ~sku
    ~initial_replica_set ~notifications ~secure_ldap ~security __id =
  let __type = "azurerm_active_directory_domain_service" in
  let __attrs =
    ({
       deployment_id = Prop.computed __type __id "deployment_id";
       domain_configuration_type =
         Prop.computed __type __id "domain_configuration_type";
       domain_name = Prop.computed __type __id "domain_name";
       filtered_sync_enabled =
         Prop.computed __type __id "filtered_sync_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_id = Prop.computed __type __id "resource_id";
       sku = Prop.computed __type __id "sku";
       sync_owner = Prop.computed __type __id "sync_owner";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_active_directory_domain_service
        (azurerm_active_directory_domain_service
           ?domain_configuration_type ?filtered_sync_enabled ?id
           ?tags ?timeouts ~domain_name ~location ~name
           ~resource_group_name ~sku ~initial_replica_set
           ~notifications ~secure_ldap ~security ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_configuration_type
    ?filtered_sync_enabled ?id ?tags ?timeouts ~domain_name ~location
    ~name ~resource_group_name ~sku ~initial_replica_set
    ~notifications ~secure_ldap ~security __id =
  let (r : _ Tf_core.resource) =
    make ?domain_configuration_type ?filtered_sync_enabled ?id ?tags
      ?timeouts ~domain_name ~location ~name ~resource_group_name
      ~sku ~initial_replica_set ~notifications ~secure_ldap ~security
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
