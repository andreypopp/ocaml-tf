(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_workspace_aad_admin__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_aad_admin__timeouts *)

type azurerm_synapse_workspace_aad_admin = {
  id : string option; [@option]  (** id *)
  login : string;  (** login *)
  object_id : string;  (** object_id *)
  synapse_workspace_id : string;  (** synapse_workspace_id *)
  tenant_id : string;  (** tenant_id *)
  timeouts : azurerm_synapse_workspace_aad_admin__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_aad_admin *)

let azurerm_synapse_workspace_aad_admin ?id ?timeouts ~login
    ~object_id ~synapse_workspace_id ~tenant_id __resource_id =
  let __resource_type = "azurerm_synapse_workspace_aad_admin" in
  let __resource =
    {
      id;
      login;
      object_id;
      synapse_workspace_id;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_workspace_aad_admin __resource);
  ()
