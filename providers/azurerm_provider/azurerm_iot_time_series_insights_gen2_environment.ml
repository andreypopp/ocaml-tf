(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_time_series_insights_gen2_environment__storage = {
  key : string;  (** key *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_gen2_environment__storage *)

type azurerm_iot_time_series_insights_gen2_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_gen2_environment__timeouts *)

type azurerm_iot_time_series_insights_gen2_environment = {
  id_properties : string list;  (** id_properties *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  warm_store_data_retention_time : string option; [@option]
      (** warm_store_data_retention_time *)
  storage :
    azurerm_iot_time_series_insights_gen2_environment__storage list;
  timeouts :
    azurerm_iot_time_series_insights_gen2_environment__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_gen2_environment *)

let azurerm_iot_time_series_insights_gen2_environment ?tags
    ?warm_store_data_retention_time ?timeouts ~id_properties
    ~location ~name ~resource_group_name ~sku_name ~storage
    __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_gen2_environment"
  in
  let __resource =
    {
      id_properties;
      location;
      name;
      resource_group_name;
      sku_name;
      tags;
      warm_store_data_retention_time;
      storage;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_gen2_environment
       __resource);
  ()
