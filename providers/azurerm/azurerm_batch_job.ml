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

type azurerm_batch_job = {
  batch_pool_id : string prop;  (** batch_pool_id *)
  common_environment_properties : (string * string prop) list option;
      [@option]
      (** common_environment_properties *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  task_retry_maximum : float prop option; [@option]
      (** task_retry_maximum *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_job *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_batch_job ?common_environment_properties ?display_name
    ?id ?priority ?task_retry_maximum ?timeouts ~batch_pool_id ~name
    () : azurerm_batch_job =
  {
    batch_pool_id;
    common_environment_properties;
    display_name;
    id;
    name;
    priority;
    task_retry_maximum;
    timeouts;
  }

type t = {
  batch_pool_id : string prop;
  common_environment_properties : (string * string) list prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  task_retry_maximum : float prop;
}

let register ?tf_module ?common_environment_properties ?display_name
    ?id ?priority ?task_retry_maximum ?timeouts ~batch_pool_id ~name
    __resource_id =
  let __resource_type = "azurerm_batch_job" in
  let __resource =
    azurerm_batch_job ?common_environment_properties ?display_name
      ?id ?priority ?task_retry_maximum ?timeouts ~batch_pool_id
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_job __resource);
  let __resource_attributes =
    ({
       batch_pool_id =
         Prop.computed __resource_type __resource_id "batch_pool_id";
       common_environment_properties =
         Prop.computed __resource_type __resource_id
           "common_environment_properties";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       task_retry_maximum =
         Prop.computed __resource_type __resource_id
           "task_retry_maximum";
     }
      : t)
  in
  __resource_attributes
