(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stack_hci_cluster__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stack_hci_cluster__identity *)

type azurerm_stack_hci_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stack_hci_cluster__timeouts *)

type azurerm_stack_hci_cluster = {
  automanage_configuration_id : string prop option; [@option]
      (** automanage_configuration_id *)
  client_id : string prop;  (** client_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  identity : azurerm_stack_hci_cluster__identity list;
  timeouts : azurerm_stack_hci_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stack_hci_cluster *)

let azurerm_stack_hci_cluster ?automanage_configuration_id ?id ?tags
    ?tenant_id ?timeouts ~client_id ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_stack_hci_cluster" in
  let __resource =
    {
      automanage_configuration_id;
      client_id;
      id;
      location;
      name;
      resource_group_name;
      tags;
      tenant_id;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stack_hci_cluster __resource);
  ()
