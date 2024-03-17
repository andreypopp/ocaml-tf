(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_time_series_insights_gen2_environment__storage = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_gen2_environment__storage *)

type azurerm_iot_time_series_insights_gen2_environment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_gen2_environment__timeouts *)

type azurerm_iot_time_series_insights_gen2_environment = {
  id : string prop option; [@option]  (** id *)
  id_properties : string prop list;  (** id_properties *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  warm_store_data_retention_time : string prop option; [@option]
      (** warm_store_data_retention_time *)
  storage :
    azurerm_iot_time_series_insights_gen2_environment__storage list;
  timeouts :
    azurerm_iot_time_series_insights_gen2_environment__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_gen2_environment *)

let azurerm_iot_time_series_insights_gen2_environment ?id ?tags
    ?warm_store_data_retention_time ?timeouts ~id_properties
    ~location ~name ~resource_group_name ~sku_name ~storage
    __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_gen2_environment"
  in
  let __resource =
    {
      id;
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
