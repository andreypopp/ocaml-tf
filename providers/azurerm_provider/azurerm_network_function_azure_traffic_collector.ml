(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_function_azure_traffic_collector__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_function_azure_traffic_collector__timeouts *)

type azurerm_network_function_azure_traffic_collector = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
