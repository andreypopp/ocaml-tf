(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_container_registry_task_schedule_run_now__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task_schedule_run_now__timeouts *)

type azurerm_container_registry_task_schedule_run_now = {
  container_registry_task_id : string;
      (** container_registry_task_id *)
  timeouts :
    azurerm_container_registry_task_schedule_run_now__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_task_schedule_run_now *)

let azurerm_container_registry_task_schedule_run_now ?timeouts
    ~container_registry_task_id __resource_id =
  let __resource_type =
    "azurerm_container_registry_task_schedule_run_now"
  in
  let __resource = { container_registry_task_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_task_schedule_run_now
       __resource);
  ()