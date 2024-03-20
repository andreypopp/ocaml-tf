(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~container_registry_task_id __id =
  let __type = "azurerm_container_registry_task_schedule_run_now" in
  let __attrs =
    ({
       container_registry_task_id =
         Prop.computed __type __id "container_registry_task_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_task_schedule_run_now
        (azurerm_container_registry_task_schedule_run_now ?id
           ?timeouts ~container_registry_task_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~container_registry_task_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~container_registry_task_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
