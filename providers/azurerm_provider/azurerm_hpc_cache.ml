(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_hpc_cache__default_access_policy__access_rule = {
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
(** azurerm_hpc_cache__default_access_policy__access_rule *)

type azurerm_hpc_cache__default_access_policy = {
  access_rule :
    azurerm_hpc_cache__default_access_policy__access_rule list;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__default_access_policy *)

type azurerm_hpc_cache__directory_active_directory = {
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
(** azurerm_hpc_cache__directory_active_directory *)

type azurerm_hpc_cache__directory_flat_file = {
  group_file_uri : string prop;  (** group_file_uri *)
  password_file_uri : string prop;  (** password_file_uri *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__directory_flat_file *)

type azurerm_hpc_cache__directory_ldap__bind = {
  dn : string prop;  (** dn *)
  password : string prop;  (** password *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__directory_ldap__bind *)

type azurerm_hpc_cache__directory_ldap = {
  base_dn : string prop;  (** base_dn *)
  certificate_validation_uri : string prop option; [@option]
      (** certificate_validation_uri *)
  download_certificate_automatically : bool prop option; [@option]
      (** download_certificate_automatically *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  server : string prop;  (** server *)
  bind : azurerm_hpc_cache__directory_ldap__bind list;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__directory_ldap *)

type azurerm_hpc_cache__dns = {
  search_domain : string prop option; [@option]  (** search_domain *)
  servers : string prop list;  (** servers *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__dns *)

type azurerm_hpc_cache__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__identity *)

type azurerm_hpc_cache__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__timeouts *)

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
  default_access_policy :
    azurerm_hpc_cache__default_access_policy list;
  directory_active_directory :
    azurerm_hpc_cache__directory_active_directory list;
  directory_flat_file : azurerm_hpc_cache__directory_flat_file list;
  directory_ldap : azurerm_hpc_cache__directory_ldap list;
  dns : azurerm_hpc_cache__dns list;
  identity : azurerm_hpc_cache__identity list;
  timeouts : azurerm_hpc_cache__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache *)

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

let azurerm_hpc_cache ?automatically_rotate_key_to_latest_enabled ?id
    ?key_vault_key_id ?mtu ?ntp_server ?tags ?timeouts
    ~cache_size_in_gb ~location ~name ~resource_group_name ~sku_name
    ~subnet_id ~default_access_policy ~directory_active_directory
    ~directory_flat_file ~directory_ldap ~dns ~identity __resource_id
    =
  let __resource_type = "azurerm_hpc_cache" in
  let __resource =
    ({
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
      : azurerm_hpc_cache)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache __resource);
  let __resource_attributes =
    ({
       automatically_rotate_key_to_latest_enabled =
         Prop.computed __resource_type __resource_id
           "automatically_rotate_key_to_latest_enabled";
       cache_size_in_gb =
         Prop.computed __resource_type __resource_id
           "cache_size_in_gb";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_key_id =
         Prop.computed __resource_type __resource_id
           "key_vault_key_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mount_addresses =
         Prop.computed __resource_type __resource_id
           "mount_addresses";
       mtu = Prop.computed __resource_type __resource_id "mtu";
       name = Prop.computed __resource_type __resource_id "name";
       ntp_server =
         Prop.computed __resource_type __resource_id "ntp_server";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
