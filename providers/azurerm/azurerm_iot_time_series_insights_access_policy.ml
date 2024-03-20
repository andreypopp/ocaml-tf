(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?timeouts ~name ~principal_object_id ~roles
    ~time_series_insights_environment_id __id =
  let __type = "azurerm_iot_time_series_insights_access_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_object_id =
         Prop.computed __type __id "principal_object_id";
       roles = Prop.computed __type __id "roles";
       time_series_insights_environment_id =
         Prop.computed __type __id
           "time_series_insights_environment_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iot_time_series_insights_access_policy
        (azurerm_iot_time_series_insights_access_policy ?description
           ?id ?timeouts ~name ~principal_object_id ~roles
           ~time_series_insights_environment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~principal_object_id ~roles ~time_series_insights_environment_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~principal_object_id ~roles
      ~time_series_insights_environment_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
