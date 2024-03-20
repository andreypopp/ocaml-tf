(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_fluid_relay_server = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_sku : string prop option; [@option]  (** storage_sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_fluid_relay_server *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_fluid_relay_server ?id ?storage_sku ?tags ?timeouts
    ~location ~name ~resource_group_name ~identity () :
    azurerm_fluid_relay_server =
  {
    id;
    location;
    name;
    resource_group_name;
    storage_sku;
    tags;
    identity;
    timeouts;
  }

type t = {
  frs_tenant_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  orderer_endpoints : string list prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  service_endpoints : string list prop;
  storage_endpoints : string list prop;
  storage_sku : string prop;
  tags : (string * string) list prop;
}

let make ?id ?storage_sku ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __id =
  let __type = "azurerm_fluid_relay_server" in
  let __attrs =
    ({
       frs_tenant_id = Prop.computed __type __id "frs_tenant_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       orderer_endpoints =
         Prop.computed __type __id "orderer_endpoints";
       primary_key = Prop.computed __type __id "primary_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_key = Prop.computed __type __id "secondary_key";
       service_endpoints =
         Prop.computed __type __id "service_endpoints";
       storage_endpoints =
         Prop.computed __type __id "storage_endpoints";
       storage_sku = Prop.computed __type __id "storage_sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_fluid_relay_server
        (azurerm_fluid_relay_server ?id ?storage_sku ?tags ?timeouts
           ~location ~name ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?storage_sku ?tags ?timeouts ~location
    ~name ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?storage_sku ?tags ?timeouts ~location ~name
      ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
