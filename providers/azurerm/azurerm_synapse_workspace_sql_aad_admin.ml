(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_workspace_sql_aad_admin__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_sql_aad_admin__timeouts *)

type azurerm_synapse_workspace_sql_aad_admin = {
  id : string prop option; [@option]  (** id *)
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : azurerm_synapse_workspace_sql_aad_admin__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_sql_aad_admin *)

type t = {
  id : string prop;
  login : string prop;
  object_id : string prop;
  synapse_workspace_id : string prop;
  tenant_id : string prop;
}

let azurerm_synapse_workspace_sql_aad_admin ?id ?timeouts ~login
    ~object_id ~synapse_workspace_id ~tenant_id __resource_id =
  let __resource_type = "azurerm_synapse_workspace_sql_aad_admin" in
  let __resource =
    ({
       id;
       login;
       object_id;
       synapse_workspace_id;
       tenant_id;
       timeouts;
     }
      : azurerm_synapse_workspace_sql_aad_admin)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_workspace_sql_aad_admin __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       login = Prop.computed __resource_type __resource_id "login";
       object_id =
         Prop.computed __resource_type __resource_id "object_id";
       synapse_workspace_id =
         Prop.computed __resource_type __resource_id
           "synapse_workspace_id";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
