(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_batch_job__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_batch_job__timeouts *)

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
  timeouts : azurerm_batch_job__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_job *)

let azurerm_batch_job ?common_environment_properties ?display_name
    ?id ?priority ?task_retry_maximum ?timeouts ~batch_pool_id ~name
    __resource_id =
  let __resource_type = "azurerm_batch_job" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_job __resource);
  ()
