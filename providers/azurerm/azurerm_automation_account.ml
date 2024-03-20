(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption = {
  key_source : string prop option; [@option]  (** key_source *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
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

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type azurerm_automation_account = {
  id : string prop option; [@option]  (** id *)
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  encryption : encryption list;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_account *)

let encryption ?key_source ?user_assigned_identity_id
    ~key_vault_key_id () : encryption =
  { key_source; key_vault_key_id; user_assigned_identity_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_account ?id ?local_authentication_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~encryption ~identity () :
    azurerm_automation_account =
  {
    id;
    local_authentication_enabled;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku_name;
    tags;
    encryption;
    identity;
    timeouts;
  }

type t = {
  dsc_primary_access_key : string prop;
  dsc_secondary_access_key : string prop;
  dsc_server_endpoint : string prop;
  hybrid_service_url : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  name : string prop;
  private_endpoint_connection :
    private_endpoint_connection list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?local_authentication_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~encryption ~identity __id =
  let __type = "azurerm_automation_account" in
  let __attrs =
    ({
       dsc_primary_access_key =
         Prop.computed __type __id "dsc_primary_access_key";
       dsc_secondary_access_key =
         Prop.computed __type __id "dsc_secondary_access_key";
       dsc_server_endpoint =
         Prop.computed __type __id "dsc_server_endpoint";
       hybrid_service_url =
         Prop.computed __type __id "hybrid_service_url";
       id = Prop.computed __type __id "id";
       local_authentication_enabled =
         Prop.computed __type __id "local_authentication_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_endpoint_connection =
         Prop.computed __type __id "private_endpoint_connection";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_account
        (azurerm_automation_account ?id ?local_authentication_enabled
           ?public_network_access_enabled ?tags ?timeouts ~location
           ~name ~resource_group_name ~sku_name ~encryption ~identity
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?local_authentication_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~encryption ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?local_authentication_enabled
      ?public_network_access_enabled ?tags ?timeouts ~location ~name
      ~resource_group_name ~sku_name ~encryption ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
