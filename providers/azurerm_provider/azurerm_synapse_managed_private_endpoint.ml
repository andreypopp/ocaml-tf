(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_managed_private_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_synapse_managed_private_endpoint__timeouts *)

type azurerm_synapse_managed_private_endpoint = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subresource_name : string prop;  (** subresource_name *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts :
    azurerm_synapse_managed_private_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_managed_private_endpoint *)

let azurerm_synapse_managed_private_endpoint ?id ?timeouts ~name
    ~subresource_name ~synapse_workspace_id ~target_resource_id
    __resource_id =
  let __resource_type = "azurerm_synapse_managed_private_endpoint" in
  let __resource =
    {
      id;
      name;
      subresource_name;
      synapse_workspace_id;
      target_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_managed_private_endpoint __resource);
  ()
