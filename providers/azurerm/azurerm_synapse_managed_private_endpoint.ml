(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_synapse_managed_private_endpoint = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subresource_name : string prop;  (** subresource_name *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_managed_private_endpoint *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_synapse_managed_private_endpoint ?id ?timeouts ~name
    ~subresource_name ~synapse_workspace_id ~target_resource_id () :
    azurerm_synapse_managed_private_endpoint =
  {
    id;
    name;
    subresource_name;
    synapse_workspace_id;
    target_resource_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  subresource_name : string prop;
  synapse_workspace_id : string prop;
  target_resource_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~subresource_name
    ~synapse_workspace_id ~target_resource_id __resource_id =
  let __resource_type = "azurerm_synapse_managed_private_endpoint" in
  let __resource =
    azurerm_synapse_managed_private_endpoint ?id ?timeouts ~name
      ~subresource_name ~synapse_workspace_id ~target_resource_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_managed_private_endpoint __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       subresource_name =
         Prop.computed __resource_type __resource_id
           "subresource_name";
       synapse_workspace_id =
         Prop.computed __resource_type __resource_id
           "synapse_workspace_id";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes
