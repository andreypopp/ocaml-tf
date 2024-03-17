(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_subscription__timeouts *)

type azurerm_api_management_subscription = {
  allow_tracing : bool option; [@option]  (** allow_tracing *)
  api_id : string option; [@option]  (** api_id *)
  api_management_name : string;  (** api_management_name *)
  display_name : string;  (** display_name *)
  id : string option; [@option]  (** id *)
  primary_key : string option; [@option]  (** primary_key *)
  product_id : string option; [@option]  (** product_id *)
  resource_group_name : string;  (** resource_group_name *)
  secondary_key : string option; [@option]  (** secondary_key *)
  state : string option; [@option]  (** state *)
  subscription_id : string option; [@option]  (** subscription_id *)
  user_id : string option; [@option]  (** user_id *)
  timeouts : azurerm_api_management_subscription__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_subscription *)

let azurerm_api_management_subscription ?allow_tracing ?api_id ?id
    ?primary_key ?product_id ?secondary_key ?state ?subscription_id
    ?user_id ?timeouts ~api_management_name ~display_name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_api_management_subscription" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_subscription __resource);
  ()
