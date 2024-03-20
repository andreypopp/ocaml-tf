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

type azurerm_maps_creator = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maps_account_id : string prop;  (** maps_account_id *)
  name : string prop;  (** name *)
  storage_units : float prop;  (** storage_units *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maps_creator *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_maps_creator ?id ?tags ?timeouts ~location
    ~maps_account_id ~name ~storage_units () : azurerm_maps_creator =
  {
    id;
    location;
    maps_account_id;
    name;
    storage_units;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  maps_account_id : string prop;
  name : string prop;
  storage_units : float prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~maps_account_id ~name
    ~storage_units __id =
  let __type = "azurerm_maps_creator" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       maps_account_id = Prop.computed __type __id "maps_account_id";
       name = Prop.computed __type __id "name";
       storage_units = Prop.computed __type __id "storage_units";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_maps_creator
        (azurerm_maps_creator ?id ?tags ?timeouts ~location
           ~maps_account_id ~name ~storage_units ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location
    ~maps_account_id ~name ~storage_units __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~maps_account_id ~name
      ~storage_units __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
