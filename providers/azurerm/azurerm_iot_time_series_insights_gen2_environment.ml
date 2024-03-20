(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?warm_store_data_retention_time ?timeouts
    ~id_properties ~location ~name ~resource_group_name ~sku_name
    ~storage __id =
  let __type = "azurerm_iot_time_series_insights_gen2_environment" in
  let __attrs =
    ({
       data_access_fqdn =
         Prop.computed __type __id "data_access_fqdn";
       id = Prop.computed __type __id "id";
       id_properties = Prop.computed __type __id "id_properties";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       warm_store_data_retention_time =
         Prop.computed __type __id "warm_store_data_retention_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iot_time_series_insights_gen2_environment
        (azurerm_iot_time_series_insights_gen2_environment ?id ?tags
           ?warm_store_data_retention_time ?timeouts ~id_properties
           ~location ~name ~resource_group_name ~sku_name ~storage ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?warm_store_data_retention_time
    ?timeouts ~id_properties ~location ~name ~resource_group_name
    ~sku_name ~storage __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?warm_store_data_retention_time ?timeouts
      ~id_properties ~location ~name ~resource_group_name ~sku_name
      ~storage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
