(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~name ~virtual_hub_id
    ~routing_policy __resource_id =
  let __resource_type = "azurerm_virtual_hub_routing_intent" in
  let __resource =
    azurerm_virtual_hub_routing_intent ?id ?timeouts ~name
      ~virtual_hub_id ~routing_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_routing_intent __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
     }
      : t)
  in
  __resource_attributes
