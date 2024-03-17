(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_role_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_synapse_role_assignment__timeouts *)

type azurerm_synapse_role_assignment = {
  id : string prop option; [@option]  (** id *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop option; [@option]
      (** principal_type *)
  role_name : string prop;  (** role_name *)
  synapse_spark_pool_id : string prop option; [@option]
      (** synapse_spark_pool_id *)
  synapse_workspace_id : string prop option; [@option]
      (** synapse_workspace_id *)
  timeouts : azurerm_synapse_role_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_role_assignment *)

let azurerm_synapse_role_assignment ?id ?principal_type
    ?synapse_spark_pool_id ?synapse_workspace_id ?timeouts
    ~principal_id ~role_name __resource_id =
  let __resource_type = "azurerm_synapse_role_assignment" in
  let __resource =
    {
      id;
      principal_id;
      principal_type;
      role_name;
      synapse_spark_pool_id;
      synapse_workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_role_assignment __resource);
  ()
