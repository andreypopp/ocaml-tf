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

type azurerm_kubernetes_fleet_member = {
  group : string prop option; [@option]
  id : string prop option; [@option]
  kubernetes_cluster_id : string prop;
  kubernetes_fleet_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_fleet_member) -> ()

let yojson_of_azurerm_kubernetes_fleet_member =
  (function
   | {
       group = v_group;
       id = v_id;
       kubernetes_cluster_id = v_kubernetes_cluster_id;
       kubernetes_fleet_id = v_kubernetes_fleet_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kubernetes_fleet_id
         in
         ("kubernetes_fleet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kubernetes_cluster_id
         in
         ("kubernetes_cluster_id", arg) :: bnds
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
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_kubernetes_fleet_member ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_fleet_member

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_fleet_member ?group ?id ?timeouts
    ~kubernetes_cluster_id ~kubernetes_fleet_id ~name () :
    azurerm_kubernetes_fleet_member =
  {
    group;
    id;
    kubernetes_cluster_id;
    kubernetes_fleet_id;
    name;
    timeouts;
  }

type t = {
  tf_name : string;
  group : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  kubernetes_fleet_id : string prop;
  name : string prop;
}

let make ?group ?id ?timeouts ~kubernetes_cluster_id
    ~kubernetes_fleet_id ~name __id =
  let __type = "azurerm_kubernetes_fleet_member" in
  let __attrs =
    ({
       tf_name = __id;
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       kubernetes_cluster_id =
         Prop.computed __type __id "kubernetes_cluster_id";
       kubernetes_fleet_id =
         Prop.computed __type __id "kubernetes_fleet_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_fleet_member
        (azurerm_kubernetes_fleet_member ?group ?id ?timeouts
           ~kubernetes_cluster_id ~kubernetes_fleet_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?group ?id ?timeouts ~kubernetes_cluster_id
    ~kubernetes_fleet_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?group ?id ?timeouts ~kubernetes_cluster_id
      ~kubernetes_fleet_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
