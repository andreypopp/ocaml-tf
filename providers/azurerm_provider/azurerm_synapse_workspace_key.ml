(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_workspace_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_key__timeouts *)

type azurerm_synapse_workspace_key = {
  active : bool;  (** active *)
  customer_managed_key_name : string;
      (** customer_managed_key_name *)
  customer_managed_key_versionless_id : string option; [@option]
      (** customer_managed_key_versionless_id *)
  synapse_workspace_id : string;  (** synapse_workspace_id *)
  timeouts : azurerm_synapse_workspace_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_key *)

let azurerm_synapse_workspace_key
    ?customer_managed_key_versionless_id ?timeouts ~active
    ~customer_managed_key_name ~synapse_workspace_id __resource_id =
  let __resource_type = "azurerm_synapse_workspace_key" in
  let __resource =
    {
      active;
      customer_managed_key_name;
      customer_managed_key_versionless_id;
      synapse_workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_workspace_key __resource);
  ()
