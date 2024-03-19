(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_mover_job_definition = {
  agent_name : string prop option; [@option]  (** agent_name *)
  copy_mode : string prop;  (** copy_mode *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  source_name : string prop;  (** source_name *)
  source_sub_path : string prop option; [@option]
      (** source_sub_path *)
  storage_mover_project_id : string prop;
      (** storage_mover_project_id *)
  target_name : string prop;  (** target_name *)
  target_sub_path : string prop option; [@option]
      (** target_sub_path *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_job_definition *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_mover_job_definition ?agent_name ?description ?id
    ?source_sub_path ?target_sub_path ?timeouts ~copy_mode ~name
    ~source_name ~storage_mover_project_id ~target_name () :
    azurerm_storage_mover_job_definition =
  {
    agent_name;
    copy_mode;
    description;
    id;
    name;
    source_name;
    source_sub_path;
    storage_mover_project_id;
    target_name;
    target_sub_path;
    timeouts;
  }

type t = {
  agent_name : string prop;
  copy_mode : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  source_name : string prop;
  source_sub_path : string prop;
  storage_mover_project_id : string prop;
  target_name : string prop;
  target_sub_path : string prop;
}

let register ?tf_module ?agent_name ?description ?id ?source_sub_path
    ?target_sub_path ?timeouts ~copy_mode ~name ~source_name
    ~storage_mover_project_id ~target_name __resource_id =
  let __resource_type = "azurerm_storage_mover_job_definition" in
  let __resource =
    azurerm_storage_mover_job_definition ?agent_name ?description ?id
      ?source_sub_path ?target_sub_path ?timeouts ~copy_mode ~name
      ~source_name ~storage_mover_project_id ~target_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_job_definition __resource);
  let __resource_attributes =
    ({
       agent_name =
         Prop.computed __resource_type __resource_id "agent_name";
       copy_mode =
         Prop.computed __resource_type __resource_id "copy_mode";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       source_name =
         Prop.computed __resource_type __resource_id "source_name";
       source_sub_path =
         Prop.computed __resource_type __resource_id
           "source_sub_path";
       storage_mover_project_id =
         Prop.computed __resource_type __resource_id
           "storage_mover_project_id";
       target_name =
         Prop.computed __resource_type __resource_id "target_name";
       target_sub_path =
         Prop.computed __resource_type __resource_id
           "target_sub_path";
     }
      : t)
  in
  __resource_attributes
