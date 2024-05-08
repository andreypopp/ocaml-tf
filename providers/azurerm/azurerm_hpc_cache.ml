(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_access_policy__access_rule = {
  access : string prop;
  anonymous_gid : float prop option; [@option]
  anonymous_uid : float prop option; [@option]
  filter : string prop option; [@option]
  root_squash_enabled : bool prop option; [@option]
  scope : string prop;
  submount_access_enabled : bool prop option; [@option]
  suid_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_access_policy__access_rule) -> ()

let yojson_of_default_access_policy__access_rule =
  (function
   | {
       access = v_access;
       anonymous_gid = v_anonymous_gid;
       anonymous_uid = v_anonymous_uid;
       filter = v_filter;
       root_squash_enabled = v_root_squash_enabled;
       scope = v_scope;
       submount_access_enabled = v_submount_access_enabled;
       suid_enabled = v_suid_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_suid_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suid_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_submount_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "submount_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         match v_root_squash_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "root_squash_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anonymous_uid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "anonymous_uid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anonymous_gid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "anonymous_gid", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access in
         ("access", arg) :: bnds
       in
       `Assoc bnds
    : default_access_policy__access_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_access_policy__access_rule

[@@@deriving.end]

type default_access_policy = {
  access_rule : default_access_policy__access_rule list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_access_policy) -> ()

let yojson_of_default_access_policy =
  (function
   | { access_rule = v_access_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_access_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_access_policy__access_rule)
               v_access_rule
           in
           let bnd = "access_rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : default_access_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_access_policy

[@@@deriving.end]

type directory_active_directory = {
  cache_netbios_name : string prop;
  dns_primary_ip : string prop;
  dns_secondary_ip : string prop option; [@option]
  domain_name : string prop;
  domain_netbios_name : string prop;
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : directory_active_directory) -> ()

let yojson_of_directory_active_directory =
  (function
   | {
       cache_netbios_name = v_cache_netbios_name;
       dns_primary_ip = v_dns_primary_ip;
       dns_secondary_ip = v_dns_secondary_ip;
       domain_name = v_domain_name;
       domain_netbios_name = v_domain_netbios_name;
       password = v_password;
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
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_netbios_name
         in
         ("domain_netbios_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_dns_secondary_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_secondary_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dns_primary_ip
         in
         ("dns_primary_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cache_netbios_name
         in
         ("cache_netbios_name", arg) :: bnds
       in
       `Assoc bnds
    : directory_active_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_directory_active_directory

[@@@deriving.end]

type directory_flat_file = {
  group_file_uri : string prop;
  password_file_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : directory_flat_file) -> ()

let yojson_of_directory_flat_file =
  (function
   | {
       group_file_uri = v_group_file_uri;
       password_file_uri = v_password_file_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_file_uri
         in
         ("password_file_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_file_uri
         in
         ("group_file_uri", arg) :: bnds
       in
       `Assoc bnds
    : directory_flat_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_directory_flat_file

[@@@deriving.end]

type directory_ldap__bind = {
  dn : string prop;
  password : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : directory_ldap__bind) -> ()

let yojson_of_directory_ldap__bind =
  (function
   | { dn = v_dn; password = v_password } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dn in
         ("dn", arg) :: bnds
       in
       `Assoc bnds
    : directory_ldap__bind -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_directory_ldap__bind

[@@@deriving.end]

type directory_ldap = {
  base_dn : string prop;
  certificate_validation_uri : string prop option; [@option]
  download_certificate_automatically : bool prop option; [@option]
  encrypted : bool prop option; [@option]
  server : string prop;
  bind : directory_ldap__bind list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : directory_ldap) -> ()

let yojson_of_directory_ldap =
  (function
   | {
       base_dn = v_base_dn;
       certificate_validation_uri = v_certificate_validation_uri;
       download_certificate_automatically =
         v_download_certificate_automatically;
       encrypted = v_encrypted;
       server = v_server;
       bind = v_bind;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_bind then bnds
         else
           let arg =
             (yojson_of_list yojson_of_directory_ldap__bind) v_bind
           in
           let bnd = "bind", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_download_certificate_automatically with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "download_certificate_automatically", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_validation_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_validation_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_base_dn in
         ("base_dn", arg) :: bnds
       in
       `Assoc bnds
    : directory_ldap -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_directory_ldap

[@@@deriving.end]

type dns = {
  search_domain : string prop option; [@option]
  servers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns) -> ()

let yojson_of_dns =
  (function
   | { search_domain = v_search_domain; servers = v_servers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_servers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_servers
           in
           let bnd = "servers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_search_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "search_domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns

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

type azurerm_hpc_cache = {
  automatically_rotate_key_to_latest_enabled : bool prop option;
      [@option]
  cache_size_in_gb : float prop;
  id : string prop option; [@option]
  key_vault_key_id : string prop option; [@option]
  location : string prop;
  mtu : float prop option; [@option]
  name : string prop;
  ntp_server : string prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  default_access_policy : default_access_policy list;
      [@default []] [@yojson_drop_default ( = )]
  directory_active_directory : directory_active_directory list;
      [@default []] [@yojson_drop_default ( = )]
  directory_flat_file : directory_flat_file list;
      [@default []] [@yojson_drop_default ( = )]
  directory_ldap : directory_ldap list;
      [@default []] [@yojson_drop_default ( = )]
  dns : dns list; [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_hpc_cache) -> ()

let yojson_of_azurerm_hpc_cache =
  (function
   | {
       automatically_rotate_key_to_latest_enabled =
         v_automatically_rotate_key_to_latest_enabled;
       cache_size_in_gb = v_cache_size_in_gb;
       id = v_id;
       key_vault_key_id = v_key_vault_key_id;
       location = v_location;
       mtu = v_mtu;
       name = v_name;
       ntp_server = v_ntp_server;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       subnet_id = v_subnet_id;
       tags = v_tags;
       default_access_policy = v_default_access_policy;
       directory_active_directory = v_directory_active_directory;
       directory_flat_file = v_directory_flat_file;
       directory_ldap = v_directory_ldap;
       dns = v_dns;
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
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dns then bnds
         else
           let arg = (yojson_of_list yojson_of_dns) v_dns in
           let bnd = "dns", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_directory_ldap then bnds
         else
           let arg =
             (yojson_of_list yojson_of_directory_ldap)
               v_directory_ldap
           in
           let bnd = "directory_ldap", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_directory_flat_file then bnds
         else
           let arg =
             (yojson_of_list yojson_of_directory_flat_file)
               v_directory_flat_file
           in
           let bnd = "directory_flat_file", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_directory_active_directory then bnds
         else
           let arg =
             (yojson_of_list yojson_of_directory_active_directory)
               v_directory_active_directory
           in
           let bnd = "directory_active_directory", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_default_access_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_access_policy)
               v_default_access_policy
           in
           let bnd = "default_access_policy", arg in
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_ntp_server with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ntp_server", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mtu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mtu", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_key_id", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float v_cache_size_in_gb
         in
         ("cache_size_in_gb", arg) :: bnds
       in
       let bnds =
         match v_automatically_rotate_key_to_latest_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "automatically_rotate_key_to_latest_enabled", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_hpc_cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_hpc_cache

[@@@deriving.end]

let default_access_policy__access_rule ?anonymous_gid ?anonymous_uid
    ?filter ?root_squash_enabled ?submount_access_enabled
    ?suid_enabled ~access ~scope () :
    default_access_policy__access_rule =
  {
    access;
    anonymous_gid;
    anonymous_uid;
    filter;
    root_squash_enabled;
    scope;
    submount_access_enabled;
    suid_enabled;
  }

let default_access_policy ~access_rule () : default_access_policy =
  { access_rule }

let directory_active_directory ?dns_secondary_ip ~cache_netbios_name
    ~dns_primary_ip ~domain_name ~domain_netbios_name ~password
    ~username () : directory_active_directory =
  {
    cache_netbios_name;
    dns_primary_ip;
    dns_secondary_ip;
    domain_name;
    domain_netbios_name;
    password;
    username;
  }

let directory_flat_file ~group_file_uri ~password_file_uri () :
    directory_flat_file =
  { group_file_uri; password_file_uri }

let directory_ldap__bind ~dn ~password () : directory_ldap__bind =
  { dn; password }

let directory_ldap ?certificate_validation_uri
    ?download_certificate_automatically ?encrypted ?(bind = [])
    ~base_dn ~server () : directory_ldap =
  {
    base_dn;
    certificate_validation_uri;
    download_certificate_automatically;
    encrypted;
    server;
    bind;
  }

let dns ?search_domain ~servers () : dns = { search_domain; servers }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_hpc_cache ?automatically_rotate_key_to_latest_enabled ?id
    ?key_vault_key_id ?mtu ?ntp_server ?tags
    ?(default_access_policy = []) ?(directory_active_directory = [])
    ?(directory_flat_file = []) ?(directory_ldap = []) ?(dns = [])
    ?(identity = []) ?timeouts ~cache_size_in_gb ~location ~name
    ~resource_group_name ~sku_name ~subnet_id () : azurerm_hpc_cache
    =
  {
    automatically_rotate_key_to_latest_enabled;
    cache_size_in_gb;
    id;
    key_vault_key_id;
    location;
    mtu;
    name;
    ntp_server;
    resource_group_name;
    sku_name;
    subnet_id;
    tags;
    default_access_policy;
    directory_active_directory;
    directory_flat_file;
    directory_ldap;
    dns;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  automatically_rotate_key_to_latest_enabled : bool prop;
  cache_size_in_gb : float prop;
  id : string prop;
  key_vault_key_id : string prop;
  location : string prop;
  mount_addresses : string list prop;
  mtu : float prop;
  name : string prop;
  ntp_server : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

let make ?automatically_rotate_key_to_latest_enabled ?id
    ?key_vault_key_id ?mtu ?ntp_server ?tags
    ?(default_access_policy = []) ?(directory_active_directory = [])
    ?(directory_flat_file = []) ?(directory_ldap = []) ?(dns = [])
    ?(identity = []) ?timeouts ~cache_size_in_gb ~location ~name
    ~resource_group_name ~sku_name ~subnet_id __id =
  let __type = "azurerm_hpc_cache" in
  let __attrs =
    ({
       tf_name = __id;
       automatically_rotate_key_to_latest_enabled =
         Prop.computed __type __id
           "automatically_rotate_key_to_latest_enabled";
       cache_size_in_gb =
         Prop.computed __type __id "cache_size_in_gb";
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       location = Prop.computed __type __id "location";
       mount_addresses = Prop.computed __type __id "mount_addresses";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       ntp_server = Prop.computed __type __id "ntp_server";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_hpc_cache
        (azurerm_hpc_cache
           ?automatically_rotate_key_to_latest_enabled ?id
           ?key_vault_key_id ?mtu ?ntp_server ?tags
           ~default_access_policy ~directory_active_directory
           ~directory_flat_file ~directory_ldap ~dns ~identity
           ?timeouts ~cache_size_in_gb ~location ~name
           ~resource_group_name ~sku_name ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?automatically_rotate_key_to_latest_enabled
    ?id ?key_vault_key_id ?mtu ?ntp_server ?tags
    ?(default_access_policy = []) ?(directory_active_directory = [])
    ?(directory_flat_file = []) ?(directory_ldap = []) ?(dns = [])
    ?(identity = []) ?timeouts ~cache_size_in_gb ~location ~name
    ~resource_group_name ~sku_name ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?automatically_rotate_key_to_latest_enabled ?id
      ?key_vault_key_id ?mtu ?ntp_server ?tags ~default_access_policy
      ~directory_active_directory ~directory_flat_file
      ~directory_ldap ~dns ~identity ?timeouts ~cache_size_in_gb
      ~location ~name ~resource_group_name ~sku_name ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
