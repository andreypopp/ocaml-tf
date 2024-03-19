(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_container_registry_task_schedule_run_now = {
  container_registry_task_id : string prop;
      (** container_registry_task_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_task_schedule_run_now *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_container_registry_task_schedule_run_now ?id ?timeouts
    ~container_registry_task_id () :
    azurerm_container_registry_task_schedule_run_now =
  { container_registry_task_id; id; timeouts }

type t = {
  container_registry_task_id : string prop;
  id : string prop;
}

let register ?tf_module ?id ?timeouts ~container_registry_task_id
    __resource_id =
  let __resource_type =
    "azurerm_container_registry_task_schedule_run_now"
  in
  let __resource =
    azurerm_container_registry_task_schedule_run_now ?id ?timeouts
      ~container_registry_task_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_task_schedule_run_now
       __resource);
  let __resource_attributes =
    ({
       container_registry_task_id =
         Prop.computed __resource_type __resource_id
           "container_registry_task_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
