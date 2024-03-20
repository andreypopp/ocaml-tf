(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_maps_account = {
  id : string prop option; [@option]  (** id *)
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maps_account *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_maps_account ?id ?local_authentication_enabled ?tags
    ?timeouts ~name ~resource_group_name ~sku_name () :
    azurerm_maps_account =
  {
    id;
    local_authentication_enabled;
    name;
    resource_group_name;
    sku_name;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  local_authentication_enabled : bool prop;
  name : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  x_ms_client_id : string prop;
}

let make ?id ?local_authentication_enabled ?tags ?timeouts ~name
    ~resource_group_name ~sku_name __id =
  let __type = "azurerm_maps_account" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       local_authentication_enabled =
         Prop.computed __type __id "local_authentication_enabled";
       name = Prop.computed __type __id "name";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       x_ms_client_id = Prop.computed __type __id "x_ms_client_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_maps_account
        (azurerm_maps_account ?id ?local_authentication_enabled ?tags
           ?timeouts ~name ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?local_authentication_enabled ?tags
    ?timeouts ~name ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?local_authentication_enabled ?tags ?timeouts ~name
      ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
