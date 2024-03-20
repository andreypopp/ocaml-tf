(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed_cluster_update__node_image_selection = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** managed_cluster_update__node_image_selection *)

type managed_cluster_update__upgrade = {
  kubernetes_version : string prop option; [@option]
      (** kubernetes_version *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** managed_cluster_update__upgrade *)

type managed_cluster_update = {
  node_image_selection :
    managed_cluster_update__node_image_selection list;
  upgrade : managed_cluster_update__upgrade list;
}
[@@deriving yojson_of]
(** managed_cluster_update *)

type stage__group = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** stage__group *)

type stage = {
  after_stage_wait_in_seconds : float prop option; [@option]
      (** after_stage_wait_in_seconds *)
  name : string prop;  (** name *)
  group : stage__group list;
}
[@@deriving yojson_of]
(** stage *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kubernetes_fleet_update_run = {
  fleet_update_strategy_id : string prop option; [@option]
      (** fleet_update_strategy_id *)
  id : string prop option; [@option]  (** id *)
  kubernetes_fleet_manager_id : string prop;
      (** kubernetes_fleet_manager_id *)
  name : string prop;  (** name *)
  managed_cluster_update : managed_cluster_update list;
  stage : stage list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_run *)

let managed_cluster_update__node_image_selection ~type_ () :
    managed_cluster_update__node_image_selection =
  { type_ }

let managed_cluster_update__upgrade ?kubernetes_version ~type_ () :
    managed_cluster_update__upgrade =
  { kubernetes_version; type_ }

let managed_cluster_update ~node_image_selection ~upgrade () :
    managed_cluster_update =
  { node_image_selection; upgrade }

let stage__group ~name () : stage__group = { name }

let stage ?after_stage_wait_in_seconds ~name ~group () : stage =
  { after_stage_wait_in_seconds; name; group }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_fleet_update_run ?fleet_update_strategy_id ?id
    ?timeouts ~kubernetes_fleet_manager_id ~name
    ~managed_cluster_update ~stage () :
    azurerm_kubernetes_fleet_update_run =
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
  fleet_update_strategy_id : string prop;
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

let make ?fleet_update_strategy_id ?id ?timeouts
    ~kubernetes_fleet_manager_id ~name ~managed_cluster_update ~stage
    __id =
  let __type = "azurerm_kubernetes_fleet_update_run" in
  let __attrs =
    ({
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
           ?fleet_update_strategy_id ?id ?timeouts
           ~kubernetes_fleet_manager_id ~name ~managed_cluster_update
           ~stage ());
    attrs = __attrs;
  }

let register ?tf_module ?fleet_update_strategy_id ?id ?timeouts
    ~kubernetes_fleet_manager_id ~name ~managed_cluster_update ~stage
    __id =
  let (r : _ Tf_core.resource) =
    make ?fleet_update_strategy_id ?id ?timeouts
      ~kubernetes_fleet_manager_id ~name ~managed_cluster_update
      ~stage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
