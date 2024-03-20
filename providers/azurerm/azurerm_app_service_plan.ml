(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?app_service_environment_id ?id ?is_xenon ?kind
    ?maximum_elastic_worker_count ?per_site_scaling ?reserved ?tags
    ?zone_redundant ?timeouts ~location ~name ~resource_group_name
    ~sku __id =
  let __type = "azurerm_app_service_plan" in
  let __attrs =
    ({
       app_service_environment_id =
         Prop.computed __type __id "app_service_environment_id";
       id = Prop.computed __type __id "id";
       is_xenon = Prop.computed __type __id "is_xenon";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       maximum_elastic_worker_count =
         Prop.computed __type __id "maximum_elastic_worker_count";
       maximum_number_of_workers =
         Prop.computed __type __id "maximum_number_of_workers";
       name = Prop.computed __type __id "name";
       per_site_scaling =
         Prop.computed __type __id "per_site_scaling";
       reserved = Prop.computed __type __id "reserved";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_plan
        (azurerm_app_service_plan ?app_service_environment_id ?id
           ?is_xenon ?kind ?maximum_elastic_worker_count
           ?per_site_scaling ?reserved ?tags ?zone_redundant
           ?timeouts ~location ~name ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?app_service_environment_id ?id ?is_xenon
    ?kind ?maximum_elastic_worker_count ?per_site_scaling ?reserved
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?app_service_environment_id ?id ?is_xenon ?kind
      ?maximum_elastic_worker_count ?per_site_scaling ?reserved ?tags
      ?zone_redundant ?timeouts ~location ~name ~resource_group_name
      ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
