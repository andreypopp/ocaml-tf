(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_routing_intent__routing_policy = {
  destinations : string prop list;  (** destinations *)
  name : string prop;  (** name *)
  next_hop : string prop;  (** next_hop *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_routing_intent__routing_policy *)

type azurerm_virtual_hub_routing_intent__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_routing_intent__timeouts *)

type azurerm_virtual_hub_routing_intent = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  routing_policy :
    azurerm_virtual_hub_routing_intent__routing_policy list;
  timeouts : azurerm_virtual_hub_routing_intent__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_routing_intent *)

let azurerm_virtual_hub_routing_intent ?id ?timeouts ~name
    ~virtual_hub_id ~routing_policy __resource_id =
  let __resource_type = "azurerm_virtual_hub_routing_intent" in
  let __resource =
    { id; name; virtual_hub_id; routing_policy; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_routing_intent __resource);
  ()
