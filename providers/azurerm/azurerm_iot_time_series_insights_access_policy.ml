(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iot_time_series_insights_access_policy = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  principal_object_id : string prop;  (** principal_object_id *)
  roles : string prop list;  (** roles *)
  time_series_insights_environment_id : string prop;
      (** time_series_insights_environment_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_access_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_access_policy ?description ?id
    ?timeouts ~name ~principal_object_id ~roles
    ~time_series_insights_environment_id () :
    azurerm_iot_time_series_insights_access_policy =
  {
    description;
    id;
    name;
    principal_object_id;
    roles;
    time_series_insights_environment_id;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  principal_object_id : string prop;
  roles : string list prop;
  time_series_insights_environment_id : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~name
    ~principal_object_id ~roles ~time_series_insights_environment_id
    __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_access_policy"
  in
  let __resource =
    azurerm_iot_time_series_insights_access_policy ?description ?id
      ?timeouts ~name ~principal_object_id ~roles
      ~time_series_insights_environment_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_access_policy
       __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       principal_object_id =
         Prop.computed __resource_type __resource_id
           "principal_object_id";
       roles = Prop.computed __resource_type __resource_id "roles";
       time_series_insights_environment_id =
         Prop.computed __resource_type __resource_id
           "time_series_insights_environment_id";
     }
      : t)
  in
  __resource_attributes
