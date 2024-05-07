(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed_cluster_update__node_image_selection = {
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_cluster_update__node_image_selection) -> ()

let yojson_of_managed_cluster_update__node_image_selection =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : managed_cluster_update__node_image_selection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_cluster_update__node_image_selection

[@@@deriving.end]

type managed_cluster_update__upgrade = {
  kubernetes_version : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_cluster_update__upgrade) -> ()

let yojson_of_managed_cluster_update__upgrade =
  (function
   | { kubernetes_version = v_kubernetes_version; type_ = v_type_ }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_kubernetes_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kubernetes_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : managed_cluster_update__upgrade ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_cluster_update__upgrade

[@@@deriving.end]

type managed_cluster_update = {
  node_image_selection :
    managed_cluster_update__node_image_selection list;
  upgrade : managed_cluster_update__upgrade list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_cluster_update) -> ()

let yojson_of_managed_cluster_update =
  (function
   | {
       node_image_selection = v_node_image_selection;
       upgrade = v_upgrade;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_managed_cluster_update__upgrade
             v_upgrade
         in
         ("upgrade", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_managed_cluster_update__node_image_selection
             v_node_image_selection
         in
         ("node_image_selection", arg) :: bnds
       in
       `Assoc bnds
    : managed_cluster_update -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_cluster_update

[@@@deriving.end]

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

type azurerm_kubernetes_fleet_update_run = {
  fleet_update_strategy_id : string prop option; [@option]
  id : string prop option; [@option]
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
  managed_cluster_update : managed_cluster_update list;
  stage : stage list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_fleet_update_run) -> ()

let yojson_of_azurerm_kubernetes_fleet_update_run =
  (function
   | {
       fleet_update_strategy_id = v_fleet_update_strategy_id;
       id = v_id;
       kubernetes_fleet_manager_id = v_kubernetes_fleet_manager_id;
       name = v_name;
       managed_cluster_update = v_managed_cluster_update;
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
         let arg =
           yojson_of_list yojson_of_managed_cluster_update
             v_managed_cluster_update
         in
         ("managed_cluster_update", arg) :: bnds
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
       let bnds =
         match v_fleet_update_strategy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fleet_update_strategy_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_kubernetes_fleet_update_run ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_fleet_update_run

[@@@deriving.end]

let managed_cluster_update__node_image_selection ~type_ () :
    managed_cluster_update__node_image_selection =
  { type_ }

let managed_cluster_update__upgrade ?kubernetes_version ~type_ () :
    managed_cluster_update__upgrade =
  { kubernetes_version; type_ }

let managed_cluster_update ?(node_image_selection = []) ~upgrade () :
    managed_cluster_update =
  { node_image_selection; upgrade }

let stage__group ~name () : stage__group = { name }

let stage ?after_stage_wait_in_seconds ~name ~group () : stage =
  { after_stage_wait_in_seconds; name; group }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_fleet_update_run ?fleet_update_strategy_id ?id
    ?(stage = []) ?timeouts ~kubernetes_fleet_manager_id ~name
    ~managed_cluster_update () : azurerm_kubernetes_fleet_update_run
    =
  {
    fleet_update_strategy_id;
    id;
    kubernetes_fleet_manager_id;
    name;
    managed_cluster_update;
    stage;
    timeouts;
  }

type t = {
  tf_name : string;
  fleet_update_strategy_id : string prop;
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

let make ?fleet_update_strategy_id ?id ?(stage = []) ?timeouts
    ~kubernetes_fleet_manager_id ~name ~managed_cluster_update __id =
  let __type = "azurerm_kubernetes_fleet_update_run" in
  let __attrs =
    ({
       tf_name = __id;
       fleet_update_strategy_id =
         Prop.computed __type __id "fleet_update_strategy_id";
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
      yojson_of_azurerm_kubernetes_fleet_update_run
        (azurerm_kubernetes_fleet_update_run
           ?fleet_update_strategy_id ?id ~stage ?timeouts
           ~kubernetes_fleet_manager_id ~name ~managed_cluster_update
           ());
    attrs = __attrs;
  }

let register ?tf_module ?fleet_update_strategy_id ?id ?(stage = [])
    ?timeouts ~kubernetes_fleet_manager_id ~name
    ~managed_cluster_update __id =
  let (r : _ Tf_core.resource) =
    make ?fleet_update_strategy_id ?id ~stage ?timeouts
      ~kubernetes_fleet_manager_id ~name ~managed_cluster_update __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
