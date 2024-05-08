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

type azurerm_iothub_fallback_route = {
  condition : string prop option; [@option]
  enabled : bool prop;
  endpoint_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  iothub_name : string prop;
  resource_group_name : string prop;
  source : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_fallback_route) -> ()

let yojson_of_azurerm_iothub_fallback_route =
  (function
   | {
       condition = v_condition;
       enabled = v_enabled;
       endpoint_names = v_endpoint_names;
       id = v_id;
       iothub_name = v_iothub_name;
       resource_group_name = v_resource_group_name;
       source = v_source;
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
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_name in
         ("iothub_name", arg) :: bnds
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
         if [] = v_endpoint_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_endpoint_names
           in
           let bnd = "endpoint_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_fallback_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_fallback_route

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_fallback_route ?condition ?id ?source ?timeouts
    ~enabled ~endpoint_names ~iothub_name ~resource_group_name () :
    azurerm_iothub_fallback_route =
  {
    condition;
    enabled;
    endpoint_names;
    id;
    iothub_name;
    resource_group_name;
    source;
    timeouts;
  }

type t = {
  tf_name : string;
  condition : string prop;
  enabled : bool prop;
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  resource_group_name : string prop;
  source : string prop;
}

let make ?condition ?id ?source ?timeouts ~enabled ~endpoint_names
    ~iothub_name ~resource_group_name __id =
  let __type = "azurerm_iothub_fallback_route" in
  let __attrs =
    ({
       tf_name = __id;
       condition = Prop.computed __type __id "condition";
       enabled = Prop.computed __type __id "enabled";
       endpoint_names = Prop.computed __type __id "endpoint_names";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source = Prop.computed __type __id "source";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_fallback_route
        (azurerm_iothub_fallback_route ?condition ?id ?source
           ?timeouts ~enabled ~endpoint_names ~iothub_name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?condition ?id ?source ?timeouts ~enabled
    ~endpoint_names ~iothub_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?condition ?id ?source ?timeouts ~enabled ~endpoint_names
      ~iothub_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
