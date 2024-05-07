(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type stage__group = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : stage__group) -> ()

let yojson_of_stage__group =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : stage__group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stage__group

[@@@deriving.end]

type stage = {
  after_stage_wait_in_seconds : float prop option; [@option]
  name : string prop;
  group : stage__group list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stage) -> ()

let yojson_of_stage =
  (function
   | {
       after_stage_wait_in_seconds = v_after_stage_wait_in_seconds;
       name = v_name;
       group = v_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_stage__group v_group in
         ("group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_after_stage_wait_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "after_stage_wait_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stage

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

type azurerm_kubernetes_fleet_update_strategy = {
  id : string prop option; [@option]
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
  stage : stage list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_fleet_update_strategy) -> ()

let yojson_of_azurerm_kubernetes_fleet_update_strategy =
  (function
   | {
       id = v_id;
       kubernetes_fleet_manager_id = v_kubernetes_fleet_manager_id;
       name = v_name;
       stage = v_stage;
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
         let arg = yojson_of_list yojson_of_stage v_stage in
         ("stage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_kubernetes_fleet_manager_id
         in
         ("kubernetes_fleet_manager_id", arg) :: bnds
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
    : azurerm_kubernetes_fleet_update_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_fleet_update_strategy

[@@@deriving.end]

let stage__group ~name () : stage__group = { name }

let stage ?after_stage_wait_in_seconds ~name ~group () : stage =
  { after_stage_wait_in_seconds; name; group }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_fleet_update_strategy ?id ?timeouts
    ~kubernetes_fleet_manager_id ~name ~stage () :
    azurerm_kubernetes_fleet_update_strategy =
  { id; kubernetes_fleet_manager_id; name; stage; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~kubernetes_fleet_manager_id ~name ~stage __id
    =
  let __type = "azurerm_kubernetes_fleet_update_strategy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       kubernetes_fleet_manager_id =
         Prop.computed __type __id "kubernetes_fleet_manager_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_fleet_update_strategy
        (azurerm_kubernetes_fleet_update_strategy ?id ?timeouts
           ~kubernetes_fleet_manager_id ~name ~stage ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~kubernetes_fleet_manager_id
    ~name ~stage __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~kubernetes_fleet_manager_id ~name ~stage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
