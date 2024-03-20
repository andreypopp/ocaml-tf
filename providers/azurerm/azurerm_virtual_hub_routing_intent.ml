(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_policy = {
  destinations : string prop list;  (** destinations *)
  name : string prop;  (** name *)
  next_hop : string prop;  (** next_hop *)
}
[@@deriving yojson_of]
(** routing_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_hub_routing_intent = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  routing_policy : routing_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_routing_intent *)

let routing_policy ~destinations ~name ~next_hop () : routing_policy
    =
  { destinations; name; next_hop }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_routing_intent ?id ?timeouts ~name
    ~virtual_hub_id ~routing_policy () :
    azurerm_virtual_hub_routing_intent =
  { id; name; virtual_hub_id; routing_policy; timeouts }

type t = {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?timeouts ~name ~virtual_hub_id ~routing_policy __id =
  let __type = "azurerm_virtual_hub_routing_intent" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_routing_intent
        (azurerm_virtual_hub_routing_intent ?id ?timeouts ~name
           ~virtual_hub_id ~routing_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~virtual_hub_id
    ~routing_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~virtual_hub_id ~routing_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
