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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_standard_environment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_standard_environment ?id
    ?partition_key ?storage_limit_exceeded_behavior ?tags ?timeouts
    ~data_retention_time ~location ~name ~resource_group_name
    ~sku_name () :
    azurerm_iot_time_series_insights_standard_environment =
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

type t = {
  data_retention_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  partition_key : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_limit_exceeded_behavior : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?partition_key
    ?storage_limit_exceeded_behavior ?tags ?timeouts
    ~data_retention_time ~location ~name ~resource_group_name
    ~sku_name __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_standard_environment"
  in
  let __resource =
    azurerm_iot_time_series_insights_standard_environment ?id
      ?partition_key ?storage_limit_exceeded_behavior ?tags ?timeouts
      ~data_retention_time ~location ~name ~resource_group_name
      ~sku_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_standard_environment
       __resource);
  let __resource_attributes =
    ({
       data_retention_time =
         Prop.computed __resource_type __resource_id
           "data_retention_time";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       partition_key =
         Prop.computed __resource_type __resource_id "partition_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       storage_limit_exceeded_behavior =
         Prop.computed __resource_type __resource_id
           "storage_limit_exceeded_behavior";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
