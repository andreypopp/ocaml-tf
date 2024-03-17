(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_function_collector_policy__ipfx_emission = {
  destination_types : string list;  (** destination_types *)
}
[@@deriving yojson_of]
(** azurerm_network_function_collector_policy__ipfx_emission *)

type azurerm_network_function_collector_policy__ipfx_ingestion = {
  source_resource_ids : string list;  (** source_resource_ids *)
}
[@@deriving yojson_of]
(** azurerm_network_function_collector_policy__ipfx_ingestion *)

type azurerm_network_function_collector_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_function_collector_policy__timeouts *)

type azurerm_network_function_collector_policy = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  traffic_collector_id : string;  (** traffic_collector_id *)
  ipfx_emission :
    azurerm_network_function_collector_policy__ipfx_emission list;
  ipfx_ingestion :
    azurerm_network_function_collector_policy__ipfx_ingestion list;
  timeouts :
    azurerm_network_function_collector_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_function_collector_policy *)

let azurerm_network_function_collector_policy ?id ?tags ?timeouts
    ~location ~name ~traffic_collector_id ~ipfx_emission
    ~ipfx_ingestion __resource_id =
  let __resource_type =
    "azurerm_network_function_collector_policy"
  in
  let __resource =
    {
      id;
      location;
      name;
      tags;
      traffic_collector_id;
      ipfx_emission;
      ipfx_ingestion;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_function_collector_policy __resource);
  ()
