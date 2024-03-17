(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_synapse_spark__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_synapse_spark__identity *)

type azurerm_machine_learning_synapse_spark__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_synapse_spark__timeouts *)

type azurerm_machine_learning_synapse_spark = {
  description : string option; [@option]  (** description *)
  local_auth_enabled : bool option; [@option]
      (** local_auth_enabled *)
  location : string;  (** location *)
  machine_learning_workspace_id : string;
      (** machine_learning_workspace_id *)
  name : string;  (** name *)
  synapse_spark_pool_id : string;  (** synapse_spark_pool_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_machine_learning_synapse_spark__identity list;
  timeouts : azurerm_machine_learning_synapse_spark__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_synapse_spark *)

let azurerm_machine_learning_synapse_spark ?description
    ?local_auth_enabled ?tags ?timeouts ~location
    ~machine_learning_workspace_id ~name ~synapse_spark_pool_id
    ~identity __resource_id =
  let __resource_type = "azurerm_machine_learning_synapse_spark" in
  let __resource =
    {
      description;
      local_auth_enabled;
      location;
      machine_learning_workspace_id;
      name;
      synapse_spark_pool_id;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_synapse_spark __resource);
  ()
