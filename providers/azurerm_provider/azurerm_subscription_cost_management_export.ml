(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subscription_cost_management_export__export_data_options = {
  time_frame : string;  (** time_frame *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_subscription_cost_management_export__export_data_options *)

type azurerm_subscription_cost_management_export__export_data_storage_location = {
  container_id : string;  (** container_id *)
  root_folder_path : string;  (** root_folder_path *)
}
[@@deriving yojson_of]
(** azurerm_subscription_cost_management_export__export_data_storage_location *)

type azurerm_subscription_cost_management_export__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_subscription_cost_management_export__timeouts *)

type azurerm_subscription_cost_management_export = {
  active : bool option; [@option]  (** active *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  recurrence_period_end_date : string;
      (** recurrence_period_end_date *)
  recurrence_period_start_date : string;
      (** recurrence_period_start_date *)
  recurrence_type : string;  (** recurrence_type *)
  subscription_id : string;  (** subscription_id *)
  export_data_options :
    azurerm_subscription_cost_management_export__export_data_options
    list;
  export_data_storage_location :
    azurerm_subscription_cost_management_export__export_data_storage_location
    list;
  timeouts :
    azurerm_subscription_cost_management_export__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription_cost_management_export *)

let azurerm_subscription_cost_management_export ?active ?id ?timeouts
    ~name ~recurrence_period_end_date ~recurrence_period_start_date
    ~recurrence_type ~subscription_id ~export_data_options
    ~export_data_storage_location __resource_id =
  let __resource_type =
    "azurerm_subscription_cost_management_export"
  in
  let __resource =
    {
      active;
      id;
      name;
      recurrence_period_end_date;
      recurrence_period_start_date;
      recurrence_type;
      subscription_id;
      export_data_options;
      export_data_storage_location;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subscription_cost_management_export __resource);
  ()
