(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kubernetes_fleet_member = {
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  kubernetes_cluster_id : string prop;  (** kubernetes_cluster_id *)
  kubernetes_fleet_id : string prop;  (** kubernetes_fleet_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_member *)

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
