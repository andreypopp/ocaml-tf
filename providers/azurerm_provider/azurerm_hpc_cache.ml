(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_hpc_cache__default_access_policy__access_rule = {
  access : string;  (** access *)
  anonymous_gid : float option; [@option]  (** anonymous_gid *)
  anonymous_uid : float option; [@option]  (** anonymous_uid *)
  filter : string option; [@option]  (** filter *)
  root_squash_enabled : bool option; [@option]
      (** root_squash_enabled *)
  scope : string;  (** scope *)
  submount_access_enabled : bool option; [@option]
      (** submount_access_enabled *)
  suid_enabled : bool option; [@option]  (** suid_enabled *)
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
  cache_netbios_name : string;  (** cache_netbios_name *)
  dns_primary_ip : string;  (** dns_primary_ip *)
  dns_secondary_ip : string option; [@option]
      (** dns_secondary_ip *)
  domain_name : string;  (** domain_name *)
  domain_netbios_name : string;  (** domain_netbios_name *)
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__directory_active_directory *)

type azurerm_hpc_cache__directory_flat_file = {
  group_file_uri : string;  (** group_file_uri *)
  password_file_uri : string;  (** password_file_uri *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__directory_flat_file *)

type azurerm_hpc_cache__directory_ldap__bind = {
  dn : string;  (** dn *)
  password : string;  (** password *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__directory_ldap__bind *)

type azurerm_hpc_cache__directory_ldap = {
  base_dn : string;  (** base_dn *)
  certificate_validation_uri : string option; [@option]
      (** certificate_validation_uri *)
  download_certificate_automatically : bool option; [@option]
      (** download_certificate_automatically *)
  encrypted : bool option; [@option]  (** encrypted *)
  server : string;  (** server *)
  bind : azurerm_hpc_cache__directory_ldap__bind list;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__directory_ldap *)

type azurerm_hpc_cache__dns = {
  search_domain : string option; [@option]  (** search_domain *)
  servers : string list;  (** servers *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__dns *)

type azurerm_hpc_cache__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__identity *)

type azurerm_hpc_cache__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache__timeouts *)

type azurerm_hpc_cache = {
  automatically_rotate_key_to_latest_enabled : bool option; [@option]
      (** automatically_rotate_key_to_latest_enabled *)
  cache_size_in_gb : float;  (** cache_size_in_gb *)
  key_vault_key_id : string option; [@option]
      (** key_vault_key_id *)
  location : string;  (** location *)
  mtu : float option; [@option]  (** mtu *)
  name : string;  (** name *)
  ntp_server : string option; [@option]  (** ntp_server *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
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

let azurerm_hpc_cache ?automatically_rotate_key_to_latest_enabled
    ?key_vault_key_id ?mtu ?ntp_server ?tags ?timeouts
    ~cache_size_in_gb ~location ~name ~resource_group_name ~sku_name
    ~subnet_id ~default_access_policy ~directory_active_directory
    ~directory_flat_file ~directory_ldap ~dns ~identity __resource_id
    =
  let __resource_type = "azurerm_hpc_cache" in
  let __resource =
    {
      automatically_rotate_key_to_latest_enabled;
      cache_size_in_gb;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache __resource);
  ()
