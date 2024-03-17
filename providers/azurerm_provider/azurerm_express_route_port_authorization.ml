(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_port_authorization__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port_authorization__timeouts *)

type azurerm_express_route_port_authorization = {
  express_route_port_name : string prop;
      (** express_route_port_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_express_route_port_authorization__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_port_authorization *)

type t = {
  authorization_key : string prop;
  authorization_use_status : string prop;
  express_route_port_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_express_route_port_authorization ?id ?timeouts
    ~express_route_port_name ~name ~resource_group_name __resource_id
    =
  let __resource_type = "azurerm_express_route_port_authorization" in
  let __resource =
    ({
       express_route_port_name;
       id;
       name;
       resource_group_name;
       timeouts;
     }
      : azurerm_express_route_port_authorization)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_port_authorization __resource);
  let __resource_attributes =
    ({
       authorization_key =
         Prop.computed __resource_type __resource_id
           "authorization_key";
       authorization_use_status =
         Prop.computed __resource_type __resource_id
           "authorization_use_status";
       express_route_port_name =
         Prop.computed __resource_type __resource_id
           "express_route_port_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
