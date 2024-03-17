(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_virtual_network__subnet = {
  name : string prop;  (** name *)
  use_in_virtual_machine_creation : string prop option; [@option]
      (** use_in_virtual_machine_creation *)
  use_public_ip_address : string prop option; [@option]
      (** use_public_ip_address *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_virtual_network__subnet *)

type azurerm_dev_test_virtual_network__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_virtual_network__timeouts *)

type azurerm_dev_test_virtual_network = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  lab_name : string prop;  (** lab_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  subnet : azurerm_dev_test_virtual_network__subnet list;
  timeouts : azurerm_dev_test_virtual_network__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_virtual_network *)

let azurerm_dev_test_virtual_network ?description ?id ?tags ?timeouts
    ~lab_name ~name ~resource_group_name ~subnet __resource_id =
  let __resource_type = "azurerm_dev_test_virtual_network" in
  let __resource =
    {
      description;
      id;
      lab_name;
      name;
      resource_group_name;
      tags;
      subnet;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_virtual_network __resource);
  ()
