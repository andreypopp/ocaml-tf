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

type azurerm_iothub_device_update_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_account *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_device_update_account ?id
    ?public_network_access_enabled ?sku ?tags ?timeouts ~location
    ~name ~resource_group_name ~identity () :
    azurerm_iothub_device_update_account =
  {
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku;
    tags;
    identity;
    timeouts;
  }

type t = {
  host_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let make ?id ?public_network_access_enabled ?sku ?tags ?timeouts
    ~location ~name ~resource_group_name ~identity __id =
  let __type = "azurerm_iothub_device_update_account" in
  let __attrs =
    ({
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_device_update_account
        (azurerm_iothub_device_update_account ?id
           ?public_network_access_enabled ?sku ?tags ?timeouts
           ~location ~name ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_network_access_enabled ?sku ?tags
    ?timeouts ~location ~name ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_network_access_enabled ?sku ?tags ?timeouts
      ~location ~name ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
