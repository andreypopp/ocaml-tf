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

let register ?tf_module ?app_service_environment_id ?id
    ?maximum_elastic_worker_count ?per_site_scaling_enabled ?tags
    ?worker_count ?zone_balancing_enabled ?timeouts ~location ~name
    ~os_type ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_service_plan" in
  let __resource =
    azurerm_service_plan ?app_service_environment_id ?id
      ?maximum_elastic_worker_count ?per_site_scaling_enabled ?tags
      ?worker_count ?zone_balancing_enabled ?timeouts ~location ~name
      ~os_type ~resource_group_name ~sku_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_service_plan __resource);
  let __resource_attributes =
    ({
       app_service_environment_id =
         Prop.computed __resource_type __resource_id
           "app_service_environment_id";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       location =
         Prop.computed __resource_type __resource_id "location";
       maximum_elastic_worker_count =
         Prop.computed __resource_type __resource_id
           "maximum_elastic_worker_count";
       name = Prop.computed __resource_type __resource_id "name";
       os_type =
         Prop.computed __resource_type __resource_id "os_type";
       per_site_scaling_enabled =
         Prop.computed __resource_type __resource_id
           "per_site_scaling_enabled";
       reserved =
         Prop.computed __resource_type __resource_id "reserved";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       worker_count =
         Prop.computed __resource_type __resource_id "worker_count";
       zone_balancing_enabled =
         Prop.computed __resource_type __resource_id
           "zone_balancing_enabled";
     }
      : t)
  in
  __resource_attributes
