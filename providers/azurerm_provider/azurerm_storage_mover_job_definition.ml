(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_mover_job_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_mover_job_definition__timeouts *)

type azurerm_storage_mover_job_definition = {
  agent_name : string option; [@option]  (** agent_name *)
  copy_mode : string;  (** copy_mode *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  source_name : string;  (** source_name *)
  source_sub_path : string option; [@option]  (** source_sub_path *)
  storage_mover_project_id : string;  (** storage_mover_project_id *)
  target_name : string;  (** target_name *)
  target_sub_path : string option; [@option]  (** target_sub_path *)
  timeouts : azurerm_storage_mover_job_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_job_definition *)

let azurerm_storage_mover_job_definition ?agent_name ?description
    ?source_sub_path ?target_sub_path ?timeouts ~copy_mode ~name
    ~source_name ~storage_mover_project_id ~target_name __resource_id
    =
  let __resource_type = "azurerm_storage_mover_job_definition" in
  let __resource =
    {
      agent_name;
      copy_mode;
      description;
      name;
      source_name;
      source_sub_path;
      storage_mover_project_id;
      target_name;
      target_sub_path;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_job_definition __resource);
  ()
