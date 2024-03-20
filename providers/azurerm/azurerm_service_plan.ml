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

type azurerm_service_plan = {
  app_service_environment_id : string prop option; [@option]
      (** app_service_environment_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maximum_elastic_worker_count : float prop option; [@option]
      (** maximum_elastic_worker_count *)
  name : string prop;  (** name *)
  os_type : string prop;  (** os_type *)
  per_site_scaling_enabled : bool prop option; [@option]
      (** per_site_scaling_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  worker_count : float prop option; [@option]  (** worker_count *)
  zone_balancing_enabled : bool prop option; [@option]
      (** zone_balancing_enabled *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_service_plan *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_service_plan ?app_service_environment_id ?id
    ?maximum_elastic_worker_count ?per_site_scaling_enabled ?tags
    ?worker_count ?zone_balancing_enabled ?timeouts ~location ~name
    ~os_type ~resource_group_name ~sku_name () : azurerm_service_plan
    =
  {
    app_service_environment_id;
    id;
    location;
    maximum_elastic_worker_count;
    name;
    os_type;
    per_site_scaling_enabled;
    resource_group_name;
    sku_name;
    tags;
    worker_count;
    zone_balancing_enabled;
    timeouts;
  }

type t = {
  app_service_environment_id : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  maximum_elastic_worker_count : float prop;
  name : string prop;
  os_type : string prop;
  per_site_scaling_enabled : bool prop;
  reserved : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  worker_count : float prop;
  zone_balancing_enabled : bool prop;
}

let make ?app_service_environment_id ?id
    ?maximum_elastic_worker_count ?per_site_scaling_enabled ?tags
    ?worker_count ?zone_balancing_enabled ?timeouts ~location ~name
    ~os_type ~resource_group_name ~sku_name __id =
  let __type = "azurerm_service_plan" in
  let __attrs =
    ({
       app_service_environment_id =
         Prop.computed __type __id "app_service_environment_id";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       maximum_elastic_worker_count =
         Prop.computed __type __id "maximum_elastic_worker_count";
       name = Prop.computed __type __id "name";
       os_type = Prop.computed __type __id "os_type";
       per_site_scaling_enabled =
         Prop.computed __type __id "per_site_scaling_enabled";
       reserved = Prop.computed __type __id "reserved";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       worker_count = Prop.computed __type __id "worker_count";
       zone_balancing_enabled =
         Prop.computed __type __id "zone_balancing_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_service_plan
        (azurerm_service_plan ?app_service_environment_id ?id
           ?maximum_elastic_worker_count ?per_site_scaling_enabled
           ?tags ?worker_count ?zone_balancing_enabled ?timeouts
           ~location ~name ~os_type ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?app_service_environment_id ?id
    ?maximum_elastic_worker_count ?per_site_scaling_enabled ?tags
    ?worker_count ?zone_balancing_enabled ?timeouts ~location ~name
    ~os_type ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?app_service_environment_id ?id
      ?maximum_elastic_worker_count ?per_site_scaling_enabled ?tags
      ?worker_count ?zone_balancing_enabled ?timeouts ~location ~name
      ~os_type ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
