(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type initial_replica_set = { subnet_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_replica_set) -> ()

let yojson_of_initial_replica_set =
  (function
   | { subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       `Assoc bnds
    : initial_replica_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_replica_set

[@@@deriving.end]

type notifications = {
  additional_recipients : string prop list option; [@option]
  notify_dc_admins : bool prop option; [@option]
  notify_global_admins : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notifications) -> ()

let yojson_of_notifications =
  (function
   | {
       additional_recipients = v_additional_recipients;
       notify_dc_admins = v_notify_dc_admins;
       notify_global_admins = v_notify_global_admins;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_notify_global_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "notify_global_admins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notify_dc_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "notify_dc_admins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_recipients", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notifications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notifications

[@@@deriving.end]

type secure_ldap = {
  enabled : bool prop;
  external_access_enabled : bool prop option; [@option]
  pfx_certificate : string prop;
  pfx_certificate_password : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secure_ldap) -> ()

let yojson_of_secure_ldap =
  (function
   | {
       enabled = v_enabled;
       external_access_enabled = v_external_access_enabled;
       pfx_certificate = v_pfx_certificate;
       pfx_certificate_password = v_pfx_certificate_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pfx_certificate_password
         in
         ("pfx_certificate_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pfx_certificate
         in
         ("pfx_certificate", arg) :: bnds
       in
       let bnds =
         match v_external_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "external_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : secure_ldap -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secure_ldap

[@@@deriving.end]

type security = {
  kerberos_armoring_enabled : bool prop option; [@option]
  kerberos_rc4_encryption_enabled : bool prop option; [@option]
  ntlm_v1_enabled : bool prop option; [@option]
  sync_kerberos_passwords : bool prop option; [@option]
  sync_ntlm_passwords : bool prop option; [@option]
  sync_on_prem_passwords : bool prop option; [@option]
  tls_v1_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security) -> ()

let yojson_of_security =
  (function
   | {
       kerberos_armoring_enabled = v_kerberos_armoring_enabled;
       kerberos_rc4_encryption_enabled =
         v_kerberos_rc4_encryption_enabled;
       ntlm_v1_enabled = v_ntlm_v1_enabled;
       sync_kerberos_passwords = v_sync_kerberos_passwords;
       sync_ntlm_passwords = v_sync_ntlm_passwords;
       sync_on_prem_passwords = v_sync_on_prem_passwords;
       tls_v1_enabled = v_tls_v1_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tls_v1_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_v1_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_on_prem_passwords with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sync_on_prem_passwords", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_ntlm_passwords with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sync_ntlm_passwords", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_kerberos_passwords with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sync_kerberos_passwords", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ntlm_v1_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ntlm_v1_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_rc4_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos_rc4_encryption_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_armoring_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos_armoring_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : security -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_active_directory_domain_service = {
  domain_configuration_type : string prop option; [@option]
  domain_name : string prop;
  filtered_sync_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  initial_replica_set : initial_replica_set list;
      [@default []] [@yojson_drop_default ( = )]
  notifications : notifications list;
      [@default []] [@yojson_drop_default ( = )]
  secure_ldap : secure_ldap list;
      [@default []] [@yojson_drop_default ( = )]
  security : security list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_active_directory_domain_service) -> ()

let yojson_of_azurerm_active_directory_domain_service =
  (function
   | {
       domain_configuration_type = v_domain_configuration_type;
       domain_name = v_domain_name;
       filtered_sync_enabled = v_filtered_sync_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       initial_replica_set = v_initial_replica_set;
       notifications = v_notifications;
       secure_ldap = v_secure_ldap;
       security = v_security;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_security then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security) v_security
           in
           let bnd = "security", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_secure_ldap then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secure_ldap) v_secure_ldap
           in
           let bnd = "secure_ldap", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_notifications then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notifications) v_notifications
           in
           let bnd = "notifications", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_initial_replica_set then bnds
         else
           let arg =
             (yojson_of_list yojson_of_initial_replica_set)
               v_initial_replica_set
           in
           let bnd = "initial_replica_set", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filtered_sync_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "filtered_sync_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_domain_configuration_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_configuration_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_active_directory_domain_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_active_directory_domain_service

[@@@deriving.end]

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
    ?(notifications = []) ?(secure_ldap = []) ?(security = [])
    ?timeouts ~domain_name ~location ~name ~resource_group_name ~sku
    ~initial_replica_set () : azurerm_active_directory_domain_service
    =
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
  tf_name : string;
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
    ?(notifications = []) ?(secure_ldap = []) ?(security = [])
    ?timeouts ~domain_name ~location ~name ~resource_group_name ~sku
    ~initial_replica_set __id =
  let __type = "azurerm_active_directory_domain_service" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags ~notifications ~secure_ldap ~security ?timeouts
           ~domain_name ~location ~name ~resource_group_name ~sku
           ~initial_replica_set ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_configuration_type
    ?filtered_sync_enabled ?id ?tags ?(notifications = [])
    ?(secure_ldap = []) ?(security = []) ?timeouts ~domain_name
    ~location ~name ~resource_group_name ~sku ~initial_replica_set
    __id =
  let (r : _ Tf_core.resource) =
    make ?domain_configuration_type ?filtered_sync_enabled ?id ?tags
      ~notifications ~secure_ldap ~security ?timeouts ~domain_name
      ~location ~name ~resource_group_name ~sku ~initial_replica_set
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
