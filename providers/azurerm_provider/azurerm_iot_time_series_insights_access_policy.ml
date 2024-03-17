(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iot_time_series_insights_access_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_access_policy__timeouts *)

type azurerm_iot_time_series_insights_access_policy = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  principal_object_id : string;  (** principal_object_id *)
  roles : string list;  (** roles *)
  time_series_insights_environment_id : string;
      (** time_series_insights_environment_id *)
  timeouts :
    azurerm_iot_time_series_insights_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_access_policy *)

let azurerm_iot_time_series_insights_access_policy ?description
    ?timeouts ~name ~principal_object_id ~roles
    ~time_series_insights_environment_id __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_access_policy"
  in
  let __resource =
    {
      description;
      name;
      principal_object_id;
      roles;
      time_series_insights_environment_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_access_policy
       __resource);
  ()
