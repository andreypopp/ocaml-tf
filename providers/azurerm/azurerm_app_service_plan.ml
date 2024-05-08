(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sku = {
  capacity : float prop option; [@option]
  size : string prop;
  tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; size = v_size; tier = v_tier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         match v_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

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

type azurerm_app_service_plan = {
  app_service_environment_id : string prop option; [@option]
  id : string prop option; [@option]
  is_xenon : bool prop option; [@option]
  kind : string prop option; [@option]
  location : string prop;
  maximum_elastic_worker_count : float prop option; [@option]
  name : string prop;
  per_site_scaling : bool prop option; [@option]
  reserved : bool prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  zone_redundant : bool prop option; [@option]
  sku : sku list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_plan) -> ()

let yojson_of_azurerm_app_service_plan =
  (function
   | {
       app_service_environment_id = v_app_service_environment_id;
       id = v_id;
       is_xenon = v_is_xenon;
       kind = v_kind;
       location = v_location;
       maximum_elastic_worker_count = v_maximum_elastic_worker_count;
       name = v_name;
       per_site_scaling = v_per_site_scaling;
       reserved = v_reserved;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       zone_redundant = v_zone_redundant;
       sku = v_sku;
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
         if Stdlib.( = ) [] v_sku then bnds
         else
           let arg = (yojson_of_list yojson_of_sku) v_sku in
           let bnd = "sku", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_redundant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_reserved with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reserved", arg in
             bnd :: bnds
       in
       let bnds =
         match v_per_site_scaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "per_site_scaling", arg in
             bnd :: bnds
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
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_xenon with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_xenon", arg in
             bnd :: bnds
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
    : azurerm_app_service_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_plan

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
