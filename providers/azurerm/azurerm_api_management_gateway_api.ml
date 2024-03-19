(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_gateway_api = {
  api_id : string prop;  (** api_id *)
  gateway_id : string prop;  (** gateway_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_api *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_gateway_api ?id ?timeouts ~api_id
    ~gateway_id () : azurerm_api_management_gateway_api =
  { api_id; gateway_id; id; timeouts }

type t = {
  api_id : string prop;
  gateway_id : string prop;
  id : string prop;
}

let register ?tf_module ?id ?timeouts ~api_id ~gateway_id
    __resource_id =
  let __resource_type = "azurerm_api_management_gateway_api" in
  let __resource =
    azurerm_api_management_gateway_api ?id ?timeouts ~api_id
      ~gateway_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_gateway_api __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       gateway_id =
         Prop.computed __resource_type __resource_id "gateway_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
