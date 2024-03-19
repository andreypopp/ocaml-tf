(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type storage = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** storage *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iot_time_series_insights_gen2_environment = {
  id : string prop option; [@option]  (** id *)
  id_properties : string prop list;  (** id_properties *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  warm_store_data_retention_time : string prop option; [@option]
      (** warm_store_data_retention_time *)
  storage : storage list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_gen2_environment *)

let storage ~key ~name () : storage = { key; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_gen2_environment ?id ?tags
    ?warm_store_data_retention_time ?timeouts ~id_properties
    ~location ~name ~resource_group_name ~sku_name ~storage () :
    azurerm_iot_time_series_insights_gen2_environment =
  {
    id;
    id_properties;
    location;
    name;
    resource_group_name;
    sku_name;
    tags;
    warm_store_data_retention_time;
    storage;
    timeouts;
  }

type t = {
  data_access_fqdn : string prop;
  id : string prop;
  id_properties : string list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  warm_store_data_retention_time : string prop;
}

let register ?tf_module ?id ?tags ?warm_store_data_retention_time
    ?timeouts ~id_properties ~location ~name ~resource_group_name
    ~sku_name ~storage __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_gen2_environment"
  in
  let __resource =
    azurerm_iot_time_series_insights_gen2_environment ?id ?tags
      ?warm_store_data_retention_time ?timeouts ~id_properties
      ~location ~name ~resource_group_name ~sku_name ~storage ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_gen2_environment
       __resource);
  let __resource_attributes =
    ({
       data_access_fqdn =
         Prop.computed __resource_type __resource_id
           "data_access_fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       id_properties =
         Prop.computed __resource_type __resource_id "id_properties";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       warm_store_data_retention_time =
         Prop.computed __resource_type __resource_id
           "warm_store_data_retention_time";
     }
      : t)
  in
  __resource_attributes
