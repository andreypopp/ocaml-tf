(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_property = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** key_property *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iot_time_series_insights_reference_data_set = {
  data_string_comparison_behavior : string prop option; [@option]
      (** data_string_comparison_behavior *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  time_series_insights_environment_id : string prop;
      (** time_series_insights_environment_id *)
  key_property : key_property list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_reference_data_set *)

let key_property ~name ~type_ () : key_property = { name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_reference_data_set
    ?data_string_comparison_behavior ?id ?tags ?timeouts ~location
    ~name ~time_series_insights_environment_id ~key_property () :
    azurerm_iot_time_series_insights_reference_data_set =
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

type t = {
  data_string_comparison_behavior : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  time_series_insights_environment_id : string prop;
}

let make ?data_string_comparison_behavior ?id ?tags ?timeouts
    ~location ~name ~time_series_insights_environment_id
    ~key_property __id =
  let __type =
    "azurerm_iot_time_series_insights_reference_data_set"
  in
  let __attrs =
    ({
       data_string_comparison_behavior =
         Prop.computed __type __id "data_string_comparison_behavior";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
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
      yojson_of_azurerm_iot_time_series_insights_reference_data_set
        (azurerm_iot_time_series_insights_reference_data_set
           ?data_string_comparison_behavior ?id ?tags ?timeouts
           ~location ~name ~time_series_insights_environment_id
           ~key_property ());
    attrs = __attrs;
  }

let register ?tf_module ?data_string_comparison_behavior ?id ?tags
    ?timeouts ~location ~name ~time_series_insights_environment_id
    ~key_property __id =
  let (r : _ Tf_core.resource) =
    make ?data_string_comparison_behavior ?id ?tags ?timeouts
      ~location ~name ~time_series_insights_environment_id
      ~key_property __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
