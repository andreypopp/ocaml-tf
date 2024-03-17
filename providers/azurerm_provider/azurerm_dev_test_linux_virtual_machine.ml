(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_linux_virtual_machine__gallery_image_reference = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_linux_virtual_machine__gallery_image_reference *)

type azurerm_dev_test_linux_virtual_machine__inbound_nat_rule = {
  backend_port : float;  (** backend_port *)
  frontend_port : float;  (** frontend_port *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_linux_virtual_machine__inbound_nat_rule *)

type azurerm_dev_test_linux_virtual_machine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_linux_virtual_machine__timeouts *)

type azurerm_dev_test_linux_virtual_machine = {
  allow_claim : bool option; [@option]  (** allow_claim *)
  disallow_public_ip_address : bool option; [@option]
      (** disallow_public_ip_address *)
  id : string option; [@option]  (** id *)
  lab_name : string;  (** lab_name *)
  lab_subnet_name : string;  (** lab_subnet_name *)
  lab_virtual_network_id : string;  (** lab_virtual_network_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  notes : string option; [@option]  (** notes *)
  password : string option; [@option]  (** password *)
  resource_group_name : string;  (** resource_group_name *)
  size : string;  (** size *)
  ssh_key : string option; [@option]  (** ssh_key *)
  storage_type : string;  (** storage_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  username : string;  (** username *)
  gallery_image_reference :
    azurerm_dev_test_linux_virtual_machine__gallery_image_reference
    list;
  inbound_nat_rule :
    azurerm_dev_test_linux_virtual_machine__inbound_nat_rule list;
  timeouts : azurerm_dev_test_linux_virtual_machine__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_linux_virtual_machine *)

let azurerm_dev_test_linux_virtual_machine ?allow_claim
    ?disallow_public_ip_address ?id ?notes ?password ?ssh_key ?tags
    ?timeouts ~lab_name ~lab_subnet_name ~lab_virtual_network_id
    ~location ~name ~resource_group_name ~size ~storage_type
    ~username ~gallery_image_reference ~inbound_nat_rule
    __resource_id =
  let __resource_type = "azurerm_dev_test_linux_virtual_machine" in
  let __resource =
    {
      allow_claim;
      disallow_public_ip_address;
      id;
      lab_name;
      lab_subnet_name;
      lab_virtual_network_id;
      location;
      name;
      notes;
      password;
      resource_group_name;
      size;
      ssh_key;
      storage_type;
      tags;
      username;
      gallery_image_reference;
      inbound_nat_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_linux_virtual_machine __resource);
  ()
