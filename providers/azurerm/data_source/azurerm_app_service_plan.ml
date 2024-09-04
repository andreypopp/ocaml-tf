(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type sku = {
  capacity : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type azurerm_app_service_plan = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_plan) -> ()

let yojson_of_azurerm_app_service_plan =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_plan

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_app_service_plan ?id ?timeouts ~name ~resource_group_name
    () : azurerm_app_service_plan =
  { id; name; resource_group_name; timeouts }

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
  sku : sku list prop;
  tags : string Tf_core.assoc prop;
  zone_redundant : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
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
       sku = Prop.computed __type __id "sku";
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
        (azurerm_app_service_plan ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
