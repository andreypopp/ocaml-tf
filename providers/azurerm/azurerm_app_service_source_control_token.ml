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

type azurerm_app_service_source_control_token = {
  id : string prop option; [@option]  (** id *)
  token : string prop;  (** token *)
  token_secret : string prop option; [@option]  (** token_secret *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control_token *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_source_control_token ?id ?token_secret
    ?timeouts ~token ~type_ () :
    azurerm_app_service_source_control_token =
  { id; token; token_secret; type_; timeouts }

type t = {
  id : string prop;
  token : string prop;
  token_secret : string prop;
  type_ : string prop;
}

let register ?tf_module ?id ?token_secret ?timeouts ~token ~type_
    __resource_id =
  let __resource_type = "azurerm_app_service_source_control_token" in
  let __resource =
    azurerm_app_service_source_control_token ?id ?token_secret
      ?timeouts ~token ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_source_control_token __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       token = Prop.computed __resource_type __resource_id "token";
       token_secret =
         Prop.computed __resource_type __resource_id "token_secret";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
