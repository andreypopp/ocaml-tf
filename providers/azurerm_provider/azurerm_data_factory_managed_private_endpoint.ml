(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_managed_private_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_managed_private_endpoint__timeouts *)

type azurerm_data_factory_managed_private_endpoint = {
  data_factory_id : string;  (** data_factory_id *)
  name : string;  (** name *)
  subresource_name : string option; [@option]
      (** subresource_name *)
  target_resource_id : string;  (** target_resource_id *)
  timeouts :
    azurerm_data_factory_managed_private_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_managed_private_endpoint *)

let azurerm_data_factory_managed_private_endpoint ?subresource_name
    ?timeouts ~data_factory_id ~name ~target_resource_id
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_managed_private_endpoint"
  in
  let __resource =
    {
      data_factory_id;
      name;
      subresource_name;
      target_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_managed_private_endpoint
       __resource);
  ()
