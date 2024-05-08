(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notify_dc_admins : bool prop;
  notify_global_admins : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_notify_global_admins
         in
         ("notify_global_admins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_notify_dc_admins
         in
         ("notify_dc_admins", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notifications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notifications

[@@@deriving.end]

type replica_sets = {
  domain_controller_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  external_access_ip_address : string prop;
  id : string prop;
  location : string prop;
  service_status : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replica_sets) -> ()

let yojson_of_replica_sets =
  (function
   | {
       domain_controller_ip_addresses =
         v_domain_controller_ip_addresses;
       external_access_ip_address = v_external_access_ip_address;
       id = v_id;
       location = v_location;
       service_status = v_service_status;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_status
         in
         ("service_status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_external_access_ip_address
         in
         ("external_access_ip_address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_domain_controller_ip_addresses then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_domain_controller_ip_addresses
           in
           let bnd = "domain_controller_ip_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : replica_sets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica_sets

[@@@deriving.end]

type secure_ldap = {
  certificate_expiry : string prop;
  certificate_thumbprint : string prop;
  enabled : bool prop;
  external_access_enabled : bool prop;
  public_certificate : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secure_ldap) -> ()

let yojson_of_secure_ldap =
  (function
   | {
       certificate_expiry = v_certificate_expiry;
       certificate_thumbprint = v_certificate_thumbprint;
       enabled = v_enabled;
       external_access_enabled = v_external_access_enabled;
       public_certificate = v_public_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_certificate
         in
         ("public_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_external_access_enabled
         in
         ("external_access_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_thumbprint
         in
         ("certificate_thumbprint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_expiry
         in
         ("certificate_expiry", arg) :: bnds
       in
       `Assoc bnds
    : secure_ldap -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secure_ldap

[@@@deriving.end]

type security = {
  kerberos_armoring_enabled : bool prop;
  kerberos_rc4_encryption_enabled : bool prop;
  ntlm_v1_enabled : bool prop;
  sync_kerberos_passwords : bool prop;
  sync_ntlm_passwords : bool prop;
  sync_on_prem_passwords : bool prop;
  tls_v1_enabled : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_tls_v1_enabled in
         ("tls_v1_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_sync_on_prem_passwords
         in
         ("sync_on_prem_passwords", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_sync_ntlm_passwords
         in
         ("sync_ntlm_passwords", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_sync_kerberos_passwords
         in
         ("sync_kerberos_passwords", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ntlm_v1_enabled in
         ("ntlm_v1_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_kerberos_rc4_encryption_enabled
         in
         ("kerberos_rc4_encryption_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_kerberos_armoring_enabled
         in
         ("kerberos_armoring_enabled", arg) :: bnds
       in
       `Assoc bnds
    : security -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security

[@@@deriving.end]

type azurerm_active_directory_domain_service = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_active_directory_domain_service) -> ()

let yojson_of_azurerm_active_directory_domain_service =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_active_directory_domain_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_active_directory_domain_service

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_active_directory_domain_service ?id ?tags ?timeouts ~name
    ~resource_group_name () : azurerm_active_directory_domain_service
    =
  { id; name; resource_group_name; tags; timeouts }

type t = {
  tf_name : string;
  deployment_id : string prop;
  domain_configuration_type : string prop;
  domain_name : string prop;
  filtered_sync_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  notifications : notifications list prop;
  replica_sets : replica_sets list prop;
  resource_group_name : string prop;
  resource_id : string prop;
  secure_ldap : secure_ldap list prop;
  security : security list prop;
  sku : string prop;
  sync_owner : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  version : float prop;
}

let make ?id ?tags ?timeouts ~name ~resource_group_name __id =
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
       notifications = Prop.computed __type __id "notifications";
       replica_sets = Prop.computed __type __id "replica_sets";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_id = Prop.computed __type __id "resource_id";
       secure_ldap = Prop.computed __type __id "secure_ldap";
       security = Prop.computed __type __id "security";
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
        (azurerm_active_directory_domain_service ?id ?tags ?timeouts
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
