(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_workspace_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_key__timeouts *)

type azurerm_synapse_workspace_key = {
  active : bool prop;  (** active *)
  customer_managed_key_name : string prop;
      (** customer_managed_key_name *)
  customer_managed_key_versionless_id : string prop option; [@option]
      (** customer_managed_key_versionless_id *)
  id : string prop option; [@option]  (** id *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  timeouts : azurerm_synapse_workspace_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_key *)

type t = {
  active : bool prop;
  customer_managed_key_name : string prop;
  customer_managed_key_versionless_id : string prop;
  id : string prop;
  synapse_workspace_id : string prop;
}

let azurerm_synapse_workspace_key
    ?customer_managed_key_versionless_id ?id ?timeouts ~active
    ~customer_managed_key_name ~synapse_workspace_id __resource_id =
  let __resource_type = "azurerm_synapse_workspace_key" in
  let __resource =
    ({
       active;
       customer_managed_key_name;
       customer_managed_key_versionless_id;
       id;
       synapse_workspace_id;
       timeouts;
     }
      : azurerm_synapse_workspace_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_workspace_key __resource);
  let __resource_attributes =
    ({
       active = Prop.computed __resource_type __resource_id "active";
       customer_managed_key_name =
         Prop.computed __resource_type __resource_id
           "customer_managed_key_name";
       customer_managed_key_versionless_id =
         Prop.computed __resource_type __resource_id
           "customer_managed_key_versionless_id";
       id = Prop.computed __resource_type __resource_id "id";
       synapse_workspace_id =
         Prop.computed __resource_type __resource_id
           "synapse_workspace_id";
     }
      : t)
  in
  __resource_attributes
