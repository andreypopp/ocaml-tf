(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_configuration__encryption = {
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  key_vault_key_identifier : string prop option; [@option]
      (** key_vault_key_identifier *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration__encryption *)

type azurerm_app_configuration__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration__identity *)

type azurerm_app_configuration__replica = {
  endpoint : string prop;  (** endpoint *)
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration__replica *)

type azurerm_app_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration__timeouts *)

type azurerm_app_configuration__primary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__primary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__secondary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__secondary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration = {
  id : string prop option; [@option]  (** id *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access : string prop option; [@option]
      (** public_network_access *)
  purge_protection_enabled : bool prop option; [@option]
      (** purge_protection_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  soft_delete_retention_days : float prop option; [@option]
      (** soft_delete_retention_days *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  encryption : azurerm_app_configuration__encryption list;
  identity : azurerm_app_configuration__identity list;
  replica : azurerm_app_configuration__replica list;
  timeouts : azurerm_app_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_configuration *)

type t = {
  endpoint : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_read_key :
    azurerm_app_configuration__primary_read_key list prop;
  primary_write_key :
    azurerm_app_configuration__primary_write_key list prop;
  public_network_access : string prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  secondary_read_key :
    azurerm_app_configuration__secondary_read_key list prop;
  secondary_write_key :
    azurerm_app_configuration__secondary_write_key list prop;
  sku : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
}

let azurerm_app_configuration ?id ?local_auth_enabled
    ?public_network_access ?purge_protection_enabled ?sku
    ?soft_delete_retention_days ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity ~replica __resource_id
    =
  let __resource_type = "azurerm_app_configuration" in
  let __resource =
    ({
       id;
       local_auth_enabled;
       location;
       name;
       public_network_access;
       purge_protection_enabled;
       resource_group_name;
       sku;
       soft_delete_retention_days;
       tags;
       encryption;
       identity;
       replica;
       timeouts;
     }
      : azurerm_app_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_configuration __resource);
  let __resource_attributes =
    ({
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       local_auth_enabled =
         Prop.computed __resource_type __resource_id
           "local_auth_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       primary_read_key =
         Prop.computed __resource_type __resource_id
           "primary_read_key";
       primary_write_key =
         Prop.computed __resource_type __resource_id
           "primary_write_key";
       public_network_access =
         Prop.computed __resource_type __resource_id
           "public_network_access";
       purge_protection_enabled =
         Prop.computed __resource_type __resource_id
           "purge_protection_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_read_key =
         Prop.computed __resource_type __resource_id
           "secondary_read_key";
       secondary_write_key =
         Prop.computed __resource_type __resource_id
           "secondary_write_key";
       sku = Prop.computed __resource_type __resource_id "sku";
       soft_delete_retention_days =
         Prop.computed __resource_type __resource_id
           "soft_delete_retention_days";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
