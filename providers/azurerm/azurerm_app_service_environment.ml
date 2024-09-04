(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cluster_setting = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_setting) -> ()

let yojson_of_cluster_setting =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : cluster_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_setting

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

type azurerm_app_service_environment = {
  allowed_user_ip_cidrs : string prop list option; [@option]
  front_end_scale_factor : float prop option; [@option]
  id : string prop option; [@option]
  internal_load_balancing_mode : string prop option; [@option]
  name : string prop;
  pricing_tier : string prop option; [@option]
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  cluster_setting : cluster_setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_environment) -> ()

let yojson_of_azurerm_app_service_environment =
  (function
   | {
       allowed_user_ip_cidrs = v_allowed_user_ip_cidrs;
       front_end_scale_factor = v_front_end_scale_factor;
       id = v_id;
       internal_load_balancing_mode = v_internal_load_balancing_mode;
       name = v_name;
       pricing_tier = v_pricing_tier;
       resource_group_name = v_resource_group_name;
       subnet_id = v_subnet_id;
       tags = v_tags;
       cluster_setting = v_cluster_setting;
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
         if Stdlib.( = ) [] v_cluster_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cluster_setting)
               v_cluster_setting
           in
           let bnd = "cluster_setting", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_pricing_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pricing_tier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_internal_load_balancing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "internal_load_balancing_mode", arg in
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
         match v_front_end_scale_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "front_end_scale_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_user_ip_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_user_ip_cidrs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_environment

[@@@deriving.end]

let cluster_setting ~name ~value () : cluster_setting =
  { name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_environment ?allowed_user_ip_cidrs
    ?front_end_scale_factor ?id ?internal_load_balancing_mode
    ?pricing_tier ?tags ?(cluster_setting = []) ?timeouts ~name
    ~resource_group_name ~subnet_id () :
    azurerm_app_service_environment =
  {
    allowed_user_ip_cidrs;
    front_end_scale_factor;
    id;
    internal_load_balancing_mode;
    name;
    pricing_tier;
    resource_group_name;
    subnet_id;
    tags;
    cluster_setting;
    timeouts;
  }

type t = {
  tf_name : string;
  allowed_user_ip_cidrs : string list prop;
  front_end_scale_factor : float prop;
  id : string prop;
  internal_ip_address : string prop;
  internal_load_balancing_mode : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  pricing_tier : string prop;
  resource_group_name : string prop;
  service_ip_address : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?allowed_user_ip_cidrs ?front_end_scale_factor ?id
    ?internal_load_balancing_mode ?pricing_tier ?tags
    ?(cluster_setting = []) ?timeouts ~name ~resource_group_name
    ~subnet_id __id =
  let __type = "azurerm_app_service_environment" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_user_ip_cidrs =
         Prop.computed __type __id "allowed_user_ip_cidrs";
       front_end_scale_factor =
         Prop.computed __type __id "front_end_scale_factor";
       id = Prop.computed __type __id "id";
       internal_ip_address =
         Prop.computed __type __id "internal_ip_address";
       internal_load_balancing_mode =
         Prop.computed __type __id "internal_load_balancing_mode";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       pricing_tier = Prop.computed __type __id "pricing_tier";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_ip_address =
         Prop.computed __type __id "service_ip_address";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_environment
        (azurerm_app_service_environment ?allowed_user_ip_cidrs
           ?front_end_scale_factor ?id ?internal_load_balancing_mode
           ?pricing_tier ?tags ~cluster_setting ?timeouts ~name
           ~resource_group_name ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_user_ip_cidrs
    ?front_end_scale_factor ?id ?internal_load_balancing_mode
    ?pricing_tier ?tags ?(cluster_setting = []) ?timeouts ~name
    ~resource_group_name ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_user_ip_cidrs ?front_end_scale_factor ?id
      ?internal_load_balancing_mode ?pricing_tier ?tags
      ~cluster_setting ?timeouts ~name ~resource_group_name
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
