(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_self_hosted__rbac_authorization = {
  resource_id : string;  (** resource_id *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_self_hosted__rbac_authorization *)

type azurerm_data_factory_integration_runtime_self_hosted__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_self_hosted__timeouts *)

type azurerm_data_factory_integration_runtime_self_hosted = {
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  rbac_authorization :
    azurerm_data_factory_integration_runtime_self_hosted__rbac_authorization
    list;
  timeouts :
    azurerm_data_factory_integration_runtime_self_hosted__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_self_hosted *)

let azurerm_data_factory_integration_runtime_self_hosted ?description
    ?id ?timeouts ~data_factory_id ~name ~rbac_authorization
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_integration_runtime_self_hosted"
  in
  let __resource =
    {
      data_factory_id;
      description;
      id;
      name;
      rbac_authorization;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_integration_runtime_self_hosted
       __resource);
  ()
