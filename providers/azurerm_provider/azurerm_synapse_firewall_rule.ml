(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_firewall_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_firewall_rule__timeouts *)

type azurerm_synapse_firewall_rule = {
  end_ip_address : string;  (** end_ip_address *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  start_ip_address : string;  (** start_ip_address *)
  synapse_workspace_id : string;  (** synapse_workspace_id *)
  timeouts : azurerm_synapse_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_firewall_rule *)

let azurerm_synapse_firewall_rule ?id ?timeouts ~end_ip_address ~name
    ~start_ip_address ~synapse_workspace_id __resource_id =
  let __resource_type = "azurerm_synapse_firewall_rule" in
  let __resource =
    {
      end_ip_address;
      id;
      name;
      start_ip_address;
      synapse_workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_firewall_rule __resource);
  ()
