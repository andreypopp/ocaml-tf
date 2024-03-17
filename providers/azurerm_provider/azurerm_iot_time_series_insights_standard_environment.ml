(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_time_series_insights_standard_environment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_standard_environment__timeouts *)

type azurerm_iot_time_series_insights_standard_environment = {
  data_retention_time : string prop;  (** data_retention_time *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  partition_key : string prop option; [@option]  (** partition_key *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  storage_limit_exceeded_behavior : string prop option; [@option]
      (** storage_limit_exceeded_behavior *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts :
    azurerm_iot_time_series_insights_standard_environment__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_standard_environment *)

let azurerm_iot_time_series_insights_standard_environment ?id
    ?partition_key ?storage_limit_exceeded_behavior ?tags ?timeouts
    ~data_retention_time ~location ~name ~resource_group_name
    ~sku_name __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_standard_environment"
  in
  let __resource =
    {
      data_retention_time;
      id;
      location;
      name;
      partition_key;
      resource_group_name;
      sku_name;
      storage_limit_exceeded_behavior;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_standard_environment
       __resource);
  ()
