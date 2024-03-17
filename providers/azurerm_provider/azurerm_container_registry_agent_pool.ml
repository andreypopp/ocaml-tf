(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_agent_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_agent_pool__timeouts *)

type azurerm_container_registry_agent_pool = {
  container_registry_name : string;  (** container_registry_name *)
  id : string option; [@option]  (** id *)
  instance_count : float option; [@option]  (** instance_count *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tier : string option; [@option]  (** tier *)
  virtual_network_subnet_id : string option; [@option]
      (** virtual_network_subnet_id *)
  timeouts : azurerm_container_registry_agent_pool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_agent_pool *)

let azurerm_container_registry_agent_pool ?id ?instance_count ?tags
    ?tier ?virtual_network_subnet_id ?timeouts
    ~container_registry_name ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_container_registry_agent_pool" in
  let __resource =
    {
      container_registry_name;
      id;
      instance_count;
      location;
      name;
      resource_group_name;
      tags;
      tier;
      virtual_network_subnet_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_agent_pool __resource);
  ()
