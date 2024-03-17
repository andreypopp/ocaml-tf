(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_group_cost_management_export__export_data_options = {
  time_frame : string prop;  (** time_frame *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_export__export_data_options *)

type azurerm_resource_group_cost_management_export__export_data_storage_location = {
  container_id : string prop;  (** container_id *)
  root_folder_path : string prop;  (** root_folder_path *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_export__export_data_storage_location *)

type azurerm_resource_group_cost_management_export__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_export__timeouts *)

type azurerm_resource_group_cost_management_export = {
  active : bool prop option; [@option]  (** active *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recurrence_period_end_date : string prop;
      (** recurrence_period_end_date *)
  recurrence_period_start_date : string prop;
      (** recurrence_period_start_date *)
  recurrence_type : string prop;  (** recurrence_type *)
  resource_group_id : string prop;  (** resource_group_id *)
  export_data_options :
    azurerm_resource_group_cost_management_export__export_data_options
    list;
  export_data_storage_location :
    azurerm_resource_group_cost_management_export__export_data_storage_location
    list;
  timeouts :
    azurerm_resource_group_cost_management_export__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_export *)

type t = {
  active : bool prop;
  id : string prop;
  name : string prop;
  recurrence_period_end_date : string prop;
  recurrence_period_start_date : string prop;
  recurrence_type : string prop;
  resource_group_id : string prop;
}

let azurerm_resource_group_cost_management_export ?active ?id
    ?timeouts ~name ~recurrence_period_end_date
    ~recurrence_period_start_date ~recurrence_type ~resource_group_id
    ~export_data_options ~export_data_storage_location __resource_id
    =
  let __resource_type =
    "azurerm_resource_group_cost_management_export"
  in
  let __resource =
    ({
       active;
       id;
       name;
       recurrence_period_end_date;
       recurrence_period_start_date;
       recurrence_type;
       resource_group_id;
       export_data_options;
       export_data_storage_location;
       timeouts;
     }
      : azurerm_resource_group_cost_management_export)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_group_cost_management_export
       __resource);
  let __resource_attributes =
    ({
       active = Prop.computed __resource_type __resource_id "active";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recurrence_period_end_date =
         Prop.computed __resource_type __resource_id
           "recurrence_period_end_date";
       recurrence_period_start_date =
         Prop.computed __resource_type __resource_id
           "recurrence_period_start_date";
       recurrence_type =
         Prop.computed __resource_type __resource_id
           "recurrence_type";
       resource_group_id =
         Prop.computed __resource_type __resource_id
           "resource_group_id";
     }
      : t)
  in
  __resource_attributes
