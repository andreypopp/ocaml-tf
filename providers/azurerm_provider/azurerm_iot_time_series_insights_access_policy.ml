(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_time_series_insights_access_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_access_policy__timeouts *)

type azurerm_iot_time_series_insights_access_policy = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  principal_object_id : string prop;  (** principal_object_id *)
  roles : string prop list;  (** roles *)
  time_series_insights_environment_id : string prop;
      (** time_series_insights_environment_id *)
  timeouts :
    azurerm_iot_time_series_insights_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_access_policy *)

let azurerm_iot_time_series_insights_access_policy ?description ?id
    ?timeouts ~name ~principal_object_id ~roles
    ~time_series_insights_environment_id __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_access_policy"
  in
  let __resource =
    {
      description;
      id;
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
