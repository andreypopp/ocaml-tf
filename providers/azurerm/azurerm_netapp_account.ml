(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type active_directory = {
  aes_encryption_enabled : bool prop option; [@option]
  dns_servers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domain : string prop;
  kerberos_ad_name : string prop option; [@option]
  kerberos_kdc_ip : string prop option; [@option]
  ldap_over_tls_enabled : bool prop option; [@option]
  ldap_signing_enabled : bool prop option; [@option]
  local_nfs_users_with_ldap_allowed : bool prop option; [@option]
  organizational_unit : string prop option; [@option]
  password : string prop;
  server_root_ca_certificate : string prop option; [@option]
  site_name : string prop option; [@option]
  smb_server_name : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : active_directory) -> ()

let yojson_of_active_directory =
  (function
   | {
       aes_encryption_enabled = v_aes_encryption_enabled;
       dns_servers = v_dns_servers;
       domain = v_domain;
       kerberos_ad_name = v_kerberos_ad_name;
       kerberos_kdc_ip = v_kerberos_kdc_ip;
       ldap_over_tls_enabled = v_ldap_over_tls_enabled;
       ldap_signing_enabled = v_ldap_signing_enabled;
       local_nfs_users_with_ldap_allowed =
         v_local_nfs_users_with_ldap_allowed;
       organizational_unit = v_organizational_unit;
       password = v_password;
       server_root_ca_certificate = v_server_root_ca_certificate;
       site_name = v_site_name;
       smb_server_name = v_smb_server_name;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_smb_server_name
         in
         ("smb_server_name", arg) :: bnds
       in
       let bnds =
         match v_site_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "site_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_root_ca_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_root_ca_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_organizational_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organizational_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_nfs_users_with_ldap_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_nfs_users_with_ldap_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ldap_signing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ldap_signing_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ldap_over_tls_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ldap_over_tls_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_kdc_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kerberos_kdc_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_ad_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kerberos_ad_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dns_servers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_dns_servers
           in
           let bnd = "dns_servers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_aes_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "aes_encryption_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : active_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_active_directory

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

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

type azurerm_netapp_account = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  active_directory : active_directory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_account) -> ()

let yojson_of_azurerm_netapp_account =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       active_directory = v_active_directory;
       identity = v_identity;
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
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_active_directory then bnds
         else
           let arg =
             (yojson_of_list yojson_of_active_directory)
               v_active_directory
           in
           let bnd = "active_directory", arg in
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
       `Assoc bnds
    : azurerm_netapp_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_account

[@@@deriving.end]

let active_directory ?aes_encryption_enabled ?kerberos_ad_name
    ?kerberos_kdc_ip ?ldap_over_tls_enabled ?ldap_signing_enabled
    ?local_nfs_users_with_ldap_allowed ?organizational_unit
    ?server_root_ca_certificate ?site_name ~dns_servers ~domain
    ~password ~smb_server_name ~username () : active_directory =
  {
    aes_encryption_enabled;
    dns_servers;
    domain;
    kerberos_ad_name;
    kerberos_kdc_ip;
    ldap_over_tls_enabled;
    ldap_signing_enabled;
    local_nfs_users_with_ldap_allowed;
    organizational_unit;
    password;
    server_root_ca_certificate;
    site_name;
    smb_server_name;
    username;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_netapp_account ?id ?tags ?(active_directory = [])
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    () : azurerm_netapp_account =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    active_directory;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?(active_directory = []) ?(identity = [])
    ?timeouts ~location ~name ~resource_group_name __id =
  let __type = "azurerm_netapp_account" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_account
        (azurerm_netapp_account ?id ?tags ~active_directory ~identity
           ?timeouts ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(active_directory = [])
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~active_directory ~identity ?timeouts ~location
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
