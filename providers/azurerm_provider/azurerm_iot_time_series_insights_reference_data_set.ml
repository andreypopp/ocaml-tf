(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_time_series_insights_reference_data_set__key_property = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_reference_data_set__key_property *)

type azurerm_iot_time_series_insights_reference_data_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_reference_data_set__timeouts *)

type azurerm_iot_time_series_insights_reference_data_set = {
  data_string_comparison_behavior : string prop option; [@option]
      (** data_string_comparison_behavior *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  time_series_insights_environment_id : string prop;
      (** time_series_insights_environment_id *)
  key_property :
    azurerm_iot_time_series_insights_reference_data_set__key_property
    list;
  timeouts :
    azurerm_iot_time_series_insights_reference_data_set__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_reference_data_set *)

let azurerm_iot_time_series_insights_reference_data_set
    ?data_string_comparison_behavior ?id ?tags ?timeouts ~location
    ~name ~time_series_insights_environment_id ~key_property
    __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_reference_data_set"
  in
  let __resource =
    {
      data_string_comparison_behavior;
      id;
      location;
      name;
      tags;
      time_series_insights_environment_id;
      key_property;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_reference_data_set
       __resource);
  ()
