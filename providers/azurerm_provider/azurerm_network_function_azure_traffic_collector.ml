(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_function_azure_traffic_collector__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_function_azure_traffic_collector__timeouts *)

type azurerm_network_function_azure_traffic_collector = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    azurerm_network_function_azure_traffic_collector__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_function_azure_traffic_collector *)

let azurerm_network_function_azure_traffic_collector ?id ?tags
    ?timeouts ~location ~name ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_network_function_azure_traffic_collector"
  in
  let __resource =
    { id; location; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_function_azure_traffic_collector
       __resource);
  ()
