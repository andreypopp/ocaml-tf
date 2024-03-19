(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type sku = {
  capacity : float prop option; [@option]  (** capacity *)
  size : string prop;  (** size *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** sku *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_app_service_plan = {
  app_service_environment_id : string prop option; [@option]
      (** app_service_environment_id *)
  id : string prop option; [@option]  (** id *)
  is_xenon : bool prop option; [@option]  (** is_xenon *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  maximum_elastic_worker_count : float prop option; [@option]
      (** maximum_elastic_worker_count *)
  name : string prop;  (** name *)
  per_site_scaling : bool prop option; [@option]
      (** per_site_scaling *)
  reserved : bool prop option; [@option]  (** reserved *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_plan *)

let sku ?capacity ~size ~tier () : sku = { capacity; size; tier }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_plan ?app_service_environment_id ?id
    ?is_xenon ?kind ?maximum_elastic_worker_count ?per_site_scaling
    ?reserved ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~sku () : azurerm_app_service_plan =
  {
    app_service_environment_id;
    id;
    is_xenon;
    kind;
    location;
    maximum_elastic_worker_count;
    name;
    per_site_scaling;
    reserved;
    resource_group_name;
    tags;
    zone_redundant;
    sku;
    timeouts;
  }

type t = {
  app_service_environment_id : string prop;
  id : string prop;
  is_xenon : bool prop;
  kind : string prop;
  location : string prop;
  maximum_elastic_worker_count : float prop;
  maximum_number_of_workers : float prop;
  name : string prop;
  per_site_scaling : bool prop;
  reserved : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let register ?tf_module ?app_service_environment_id ?id ?is_xenon
    ?kind ?maximum_elastic_worker_count ?per_site_scaling ?reserved
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_app_service_plan" in
  let __resource =
    azurerm_app_service_plan ?app_service_environment_id ?id
      ?is_xenon ?kind ?maximum_elastic_worker_count ?per_site_scaling
      ?reserved ?tags ?zone_redundant ?timeouts ~location ~name
      ~resource_group_name ~sku ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_plan __resource);
  let __resource_attributes =
    ({
       app_service_environment_id =
         Prop.computed __resource_type __resource_id
           "app_service_environment_id";
       id = Prop.computed __resource_type __resource_id "id";
       is_xenon =
         Prop.computed __resource_type __resource_id "is_xenon";
       kind = Prop.computed __resource_type __resource_id "kind";
       location =
         Prop.computed __resource_type __resource_id "location";
       maximum_elastic_worker_count =
         Prop.computed __resource_type __resource_id
           "maximum_elastic_worker_count";
       maximum_number_of_workers =
         Prop.computed __resource_type __resource_id
           "maximum_number_of_workers";
       name = Prop.computed __resource_type __resource_id "name";
       per_site_scaling =
         Prop.computed __resource_type __resource_id
           "per_site_scaling";
       reserved =
         Prop.computed __resource_type __resource_id "reserved";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       zone_redundant =
         Prop.computed __resource_type __resource_id "zone_redundant";
     }
      : t)
  in
  __resource_attributes
