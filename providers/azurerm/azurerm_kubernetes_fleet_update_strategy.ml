(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type azurerm_kubernetes_fleet_update_strategy = {
  id : string prop option; [@option]  (** id *)
  kubernetes_fleet_manager_id : string prop;
      (** kubernetes_fleet_manager_id *)
  name : string prop;  (** name *)
  stage : stage list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_update_strategy *)

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
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

let register ?tf_module ?id ?timeouts ~kubernetes_fleet_manager_id
    ~name ~stage __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_update_strategy" in
  let __resource =
    azurerm_kubernetes_fleet_update_strategy ?id ?timeouts
      ~kubernetes_fleet_manager_id ~name ~stage ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_fleet_update_strategy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_fleet_manager_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_fleet_manager_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
