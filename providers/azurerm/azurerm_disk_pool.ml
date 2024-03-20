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

type azurerm_disk_pool = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list;  (** zones *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_disk_pool ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~subnet_id ~zones () :
    azurerm_disk_pool =
  {
    id;
    location;
    name;
    resource_group_name;
    sku_name;
    subnet_id;
    tags;
    zones;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~subnet_id ~zones __id =
  let __type = "azurerm_disk_pool" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_disk_pool
        (azurerm_disk_pool ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~sku_name ~subnet_id ~zones ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~subnet_id ~zones __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~sku_name ~subnet_id ~zones __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
