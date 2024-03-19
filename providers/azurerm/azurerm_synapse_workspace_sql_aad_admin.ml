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

type azurerm_synapse_workspace_sql_aad_admin = {
  id : string prop option; [@option]  (** id *)
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_sql_aad_admin *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_workspace_sql_aad_admin ?id ?timeouts ~login
    ~object_id ~synapse_workspace_id ~tenant_id () :
    azurerm_synapse_workspace_sql_aad_admin =
  { id; login; object_id; synapse_workspace_id; tenant_id; timeouts }

type t = {
  id : string prop;
  login : string prop;
  object_id : string prop;
  synapse_workspace_id : string prop;
  tenant_id : string prop;
}

let register ?tf_module ?id ?timeouts ~login ~object_id
    ~synapse_workspace_id ~tenant_id __resource_id =
  let __resource_type = "azurerm_synapse_workspace_sql_aad_admin" in
  let __resource =
    azurerm_synapse_workspace_sql_aad_admin ?id ?timeouts ~login
      ~object_id ~synapse_workspace_id ~tenant_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
