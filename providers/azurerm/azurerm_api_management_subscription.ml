(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_subscription__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_subscription__timeouts *)

type azurerm_api_management_subscription = {
  allow_tracing : bool prop option; [@option]  (** allow_tracing *)
  api_id : string prop option; [@option]  (** api_id *)
  api_management_name : string prop;  (** api_management_name *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  primary_key : string prop option; [@option]  (** primary_key *)
  product_id : string prop option; [@option]  (** product_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  secondary_key : string prop option; [@option]  (** secondary_key *)
  state : string prop option; [@option]  (** state *)
  subscription_id : string prop option; [@option]
      (** subscription_id *)
  user_id : string prop option; [@option]  (** user_id *)
  timeouts : azurerm_api_management_subscription__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_subscription *)

type t = {
  allow_tracing : bool prop;
  api_id : string prop;
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  primary_key : string prop;
  product_id : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  state : string prop;
  subscription_id : string prop;
  user_id : string prop;
}

let azurerm_api_management_subscription ?allow_tracing ?api_id ?id
    ?primary_key ?product_id ?secondary_key ?state ?subscription_id
    ?user_id ?timeouts ~api_management_name ~display_name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_api_management_subscription" in
  let __resource =
    ({
       allow_tracing;
       api_id;
       api_management_name;
       display_name;
       id;
       primary_key;
       product_id;
       resource_group_name;
       secondary_key;
       state;
       subscription_id;
       user_id;
       timeouts;
     }
      : azurerm_api_management_subscription)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_subscription __resource);
  let __resource_attributes =
    ({
       allow_tracing =
         Prop.computed __resource_type __resource_id "allow_tracing";
       api_id = Prop.computed __resource_type __resource_id "api_id";
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       product_id =
         Prop.computed __resource_type __resource_id "product_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
       state = Prop.computed __resource_type __resource_id "state";
       subscription_id =
         Prop.computed __resource_type __resource_id
           "subscription_id";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
     }
      : t)
  in
  __resource_attributes
