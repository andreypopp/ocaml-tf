(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?local_auth_enabled ?public_network_access
    ?purge_protection_enabled ?sku ?soft_delete_retention_days ?tags
    ?timeouts ~location ~name ~resource_group_name ~encryption
    ~identity ~replica __id =
  let __type = "azurerm_app_configuration" in
  let __attrs =
    ({
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_read_key =
         Prop.computed __type __id "primary_read_key";
       primary_write_key =
         Prop.computed __type __id "primary_write_key";
       public_network_access =
         Prop.computed __type __id "public_network_access";
       purge_protection_enabled =
         Prop.computed __type __id "purge_protection_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_read_key =
         Prop.computed __type __id "secondary_read_key";
       secondary_write_key =
         Prop.computed __type __id "secondary_write_key";
       sku = Prop.computed __type __id "sku";
       soft_delete_retention_days =
         Prop.computed __type __id "soft_delete_retention_days";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_configuration
        (azurerm_app_configuration ?id ?local_auth_enabled
           ?public_network_access ?purge_protection_enabled ?sku
           ?soft_delete_retention_days ?tags ?timeouts ~location
           ~name ~resource_group_name ~encryption ~identity ~replica
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?local_auth_enabled
    ?public_network_access ?purge_protection_enabled ?sku
    ?soft_delete_retention_days ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity ~replica __id =
  let (r : _ Tf_core.resource) =
    make ?id ?local_auth_enabled ?public_network_access
      ?purge_protection_enabled ?sku ?soft_delete_retention_days
      ?tags ?timeouts ~location ~name ~resource_group_name
      ~encryption ~identity ~replica __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
