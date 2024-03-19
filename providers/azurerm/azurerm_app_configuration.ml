(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type encryption = {
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  key_vault_key_identifier : string prop option; [@option]
      (** key_vault_key_identifier *)
}
[@@deriving yojson_of]
(** encryption *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type replica = {
  location : string prop;  (** location *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** replica *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type primary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]

type primary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]

type secondary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]

type secondary_write_key = {
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
  encryption : encryption list;
  identity : identity list;
  replica : replica list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_configuration *)

let encryption ?identity_client_id ?key_vault_key_identifier () :
    encryption =
  { identity_client_id; key_vault_key_identifier }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let replica ~location ~name () : replica = { location; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_configuration ?id ?local_auth_enabled
    ?public_network_access ?purge_protection_enabled ?sku
    ?soft_delete_retention_days ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity ~replica () :
    azurerm_app_configuration =
  {
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

type t = {
  endpoint : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_read_key : primary_read_key list prop;
  primary_write_key : primary_write_key list prop;
  public_network_access : string prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  secondary_read_key : secondary_read_key list prop;
  secondary_write_key : secondary_write_key list prop;
  sku : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?local_auth_enabled
    ?public_network_access ?purge_protection_enabled ?sku
    ?soft_delete_retention_days ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity ~replica __resource_id
    =
  let __resource_type = "azurerm_app_configuration" in
  let __resource =
    azurerm_app_configuration ?id ?local_auth_enabled
      ?public_network_access ?purge_protection_enabled ?sku
      ?soft_delete_retention_days ?tags ?timeouts ~location ~name
      ~resource_group_name ~encryption ~identity ~replica ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
