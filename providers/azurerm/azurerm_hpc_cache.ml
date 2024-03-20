(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_access_policy__access_rule = {
  access : string prop;  (** access *)
  anonymous_gid : float prop option; [@option]  (** anonymous_gid *)
  anonymous_uid : float prop option; [@option]  (** anonymous_uid *)
  filter : string prop option; [@option]  (** filter *)
  root_squash_enabled : bool prop option; [@option]
      (** root_squash_enabled *)
  scope : string prop;  (** scope *)
  submount_access_enabled : bool prop option; [@option]
      (** submount_access_enabled *)
  suid_enabled : bool prop option; [@option]  (** suid_enabled *)
}
[@@deriving yojson_of]
(** default_access_policy__access_rule *)

type default_access_policy = {
  access_rule : default_access_policy__access_rule list;
}
[@@deriving yojson_of]
(** default_access_policy *)

type directory_active_directory = {
  cache_netbios_name : string prop;  (** cache_netbios_name *)
  dns_primary_ip : string prop;  (** dns_primary_ip *)
  dns_secondary_ip : string prop option; [@option]
      (** dns_secondary_ip *)
  domain_name : string prop;  (** domain_name *)
  domain_netbios_name : string prop;  (** domain_netbios_name *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** directory_active_directory *)

type directory_flat_file = {
  group_file_uri : string prop;  (** group_file_uri *)
  password_file_uri : string prop;  (** password_file_uri *)
}
[@@deriving yojson_of]
(** directory_flat_file *)

type directory_ldap__bind = {
  dn : string prop;  (** dn *)
  password : string prop;  (** password *)
}
[@@deriving yojson_of]
(** directory_ldap__bind *)

type directory_ldap = {
  base_dn : string prop;  (** base_dn *)
  certificate_validation_uri : string prop option; [@option]
      (** certificate_validation_uri *)
  download_certificate_automatically : bool prop option; [@option]
      (** download_certificate_automatically *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  server : string prop;  (** server *)
  bind : directory_ldap__bind list;
}
[@@deriving yojson_of]
(** directory_ldap *)

type dns = {
  search_domain : string prop option; [@option]  (** search_domain *)
  servers : string prop list;  (** servers *)
}
[@@deriving yojson_of]
(** dns *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_hpc_cache = {
  automatically_rotate_key_to_latest_enabled : bool prop option;
      [@option]
      (** automatically_rotate_key_to_latest_enabled *)
  cache_size_in_gb : float prop;  (** cache_size_in_gb *)
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  location : string prop;  (** location *)
  mtu : float prop option; [@option]  (** mtu *)
  name : string prop;  (** name *)
  ntp_server : string prop option; [@option]  (** ntp_server *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  default_access_policy : default_access_policy list;
  directory_active_directory : directory_active_directory list;
  directory_flat_file : directory_flat_file list;
  directory_ldap : directory_ldap list;
  dns : dns list;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache *)

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
    ?download_certificate_automatically ?encrypted ~base_dn ~server
    ~bind () : directory_ldap =
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
    ?key_vault_key_id ?mtu ?ntp_server ?tags ?timeouts
    ~cache_size_in_gb ~location ~name ~resource_group_name ~sku_name
    ~subnet_id ~default_access_policy ~directory_active_directory
    ~directory_flat_file ~directory_ldap ~dns ~identity () :
    azurerm_hpc_cache =
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
    ?key_vault_key_id ?mtu ?ntp_server ?tags ?timeouts
    ~cache_size_in_gb ~location ~name ~resource_group_name ~sku_name
    ~subnet_id ~default_access_policy ~directory_active_directory
    ~directory_flat_file ~directory_ldap ~dns ~identity __id =
  let __type = "azurerm_hpc_cache" in
  let __attrs =
    ({
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
           ?key_vault_key_id ?mtu ?ntp_server ?tags ?timeouts
           ~cache_size_in_gb ~location ~name ~resource_group_name
           ~sku_name ~subnet_id ~default_access_policy
           ~directory_active_directory ~directory_flat_file
           ~directory_ldap ~dns ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?automatically_rotate_key_to_latest_enabled
    ?id ?key_vault_key_id ?mtu ?ntp_server ?tags ?timeouts
    ~cache_size_in_gb ~location ~name ~resource_group_name ~sku_name
    ~subnet_id ~default_access_policy ~directory_active_directory
    ~directory_flat_file ~directory_ldap ~dns ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?automatically_rotate_key_to_latest_enabled ?id
      ?key_vault_key_id ?mtu ?ntp_server ?tags ?timeouts
      ~cache_size_in_gb ~location ~name ~resource_group_name
      ~sku_name ~subnet_id ~default_access_policy
      ~directory_active_directory ~directory_flat_file
      ~directory_ldap ~dns ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
