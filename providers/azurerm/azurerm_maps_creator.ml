(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?timeouts ~location
    ~maps_account_id ~name ~storage_units __resource_id =
  let __resource_type = "azurerm_maps_creator" in
  let __resource =
    azurerm_maps_creator ?id ?tags ?timeouts ~location
      ~maps_account_id ~name ~storage_units ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maps_creator __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       maps_account_id =
         Prop.computed __resource_type __resource_id
           "maps_account_id";
       name = Prop.computed __resource_type __resource_id "name";
       storage_units =
         Prop.computed __resource_type __resource_id "storage_units";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
