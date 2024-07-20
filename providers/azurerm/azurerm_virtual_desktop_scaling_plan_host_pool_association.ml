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

type azurerm_virtual_desktop_scaling_plan_host_pool_association = {
  enabled : bool prop;
  host_pool_id : string prop;
  id : string prop option; [@option]
  scaling_plan_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_virtual_desktop_scaling_plan_host_pool_association) ->
  ()

let yojson_of_azurerm_virtual_desktop_scaling_plan_host_pool_association
    =
  (function
   | {
       enabled = v_enabled;
       host_pool_id = v_host_pool_id;
       id = v_id;
       scaling_plan_id = v_scaling_plan_id;
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
           yojson_of_prop yojson_of_string v_scaling_plan_id
         in
         ("scaling_plan_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_host_pool_id in
         ("host_pool_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_desktop_scaling_plan_host_pool_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_virtual_desktop_scaling_plan_host_pool_association

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_scaling_plan_host_pool_association ?id
    ?timeouts ~enabled ~host_pool_id ~scaling_plan_id () :
    azurerm_virtual_desktop_scaling_plan_host_pool_association =
  { enabled; host_pool_id; id; scaling_plan_id; timeouts }

type t = {
  tf_name : string;
  enabled : bool prop;
  host_pool_id : string prop;
  id : string prop;
  scaling_plan_id : string prop;
}

let make ?id ?timeouts ~enabled ~host_pool_id ~scaling_plan_id __id =
  let __type =
    "azurerm_virtual_desktop_scaling_plan_host_pool_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       host_pool_id = Prop.computed __type __id "host_pool_id";
       id = Prop.computed __type __id "id";
       scaling_plan_id = Prop.computed __type __id "scaling_plan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_scaling_plan_host_pool_association
        (azurerm_virtual_desktop_scaling_plan_host_pool_association
           ?id ?timeouts ~enabled ~host_pool_id ~scaling_plan_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~enabled ~host_pool_id
    ~scaling_plan_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~enabled ~host_pool_id ~scaling_plan_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
