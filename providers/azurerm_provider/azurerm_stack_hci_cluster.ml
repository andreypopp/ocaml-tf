(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stack_hci_cluster__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stack_hci_cluster__identity *)

type azurerm_stack_hci_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stack_hci_cluster__timeouts *)

type azurerm_stack_hci_cluster = {
  automanage_configuration_id : string option; [@option]
      (** automanage_configuration_id *)
  client_id : string;  (** client_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_stack_hci_cluster__identity list;
  timeouts : azurerm_stack_hci_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stack_hci_cluster *)

let azurerm_stack_hci_cluster ?automanage_configuration_id ?tags
    ?timeouts ~client_id ~location ~name ~resource_group_name
    ~identity __resource_id =
  let __resource_type = "azurerm_stack_hci_cluster" in
  let __resource =
    {
      automanage_configuration_id;
      client_id;
      location;
      name;
      resource_group_name;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stack_hci_cluster __resource);
  ()
