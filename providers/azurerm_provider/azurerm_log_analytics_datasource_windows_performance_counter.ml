(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_datasource_windows_performance_counter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_datasource_windows_performance_counter__timeouts *)

type azurerm_log_analytics_datasource_windows_performance_counter = {
  counter_name : string prop;  (** counter_name *)
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  interval_seconds : float prop;  (** interval_seconds *)
  name : string prop;  (** name *)
  object_name : string prop;  (** object_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  workspace_name : string prop;  (** workspace_name *)
  timeouts :
    azurerm_log_analytics_datasource_windows_performance_counter__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_datasource_windows_performance_counter *)

let azurerm_log_analytics_datasource_windows_performance_counter ?id
    ?timeouts ~counter_name ~instance_name ~interval_seconds ~name
    ~object_name ~resource_group_name ~workspace_name __resource_id =
  let __resource_type =
    "azurerm_log_analytics_datasource_windows_performance_counter"
  in
  let __resource =
    {
      counter_name;
      id;
      instance_name;
      interval_seconds;
      name;
      object_name;
      resource_group_name;
      workspace_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_datasource_windows_performance_counter
       __resource);
  ()
