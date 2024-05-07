(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_service_plan = {
  app_service_environment_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  maximum_elastic_worker_count : float prop option; [@option]
  name : string prop;
  os_type : string prop;
  per_site_scaling_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string prop) list option; [@option]
  worker_count : float prop option; [@option]
  zone_balancing_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_service_plan) -> ()

let yojson_of_azurerm_service_plan =
  (function
   | {
       app_service_environment_id = v_app_service_environment_id;
       id = v_id;
       location = v_location;
       maximum_elastic_worker_count = v_maximum_elastic_worker_count;
       name = v_name;
       os_type = v_os_type;
       per_site_scaling_enabled = v_per_site_scaling_enabled;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       worker_count = v_worker_count;
       zone_balancing_enabled = v_zone_balancing_enabled;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_zone_balancing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_balancing_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_worker_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "worker_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_per_site_scaling_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "per_site_scaling_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_type in
         ("os_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_maximum_elastic_worker_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_elastic_worker_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_service_environment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_service_environment_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_service_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_service_plan

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
