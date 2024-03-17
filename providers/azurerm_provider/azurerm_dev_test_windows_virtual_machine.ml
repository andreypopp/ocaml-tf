(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_windows_virtual_machine__gallery_image_reference = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_windows_virtual_machine__gallery_image_reference *)

type azurerm_dev_test_windows_virtual_machine__inbound_nat_rule = {
  backend_port : float prop;  (** backend_port *)
  frontend_port : float prop;  (** frontend_port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_windows_virtual_machine__inbound_nat_rule *)

type azurerm_dev_test_windows_virtual_machine__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_windows_virtual_machine__timeouts *)

type azurerm_dev_test_windows_virtual_machine = {
  allow_claim : bool prop option; [@option]  (** allow_claim *)
  disallow_public_ip_address : bool prop option; [@option]
      (** disallow_public_ip_address *)
  id : string prop option; [@option]  (** id *)
  lab_name : string prop;  (** lab_name *)
  lab_subnet_name : string prop;  (** lab_subnet_name *)
  lab_virtual_network_id : string prop;
      (** lab_virtual_network_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  password : string prop;  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  size : string prop;  (** size *)
  storage_type : string prop;  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  username : string prop;  (** username *)
  gallery_image_reference :
    azurerm_dev_test_windows_virtual_machine__gallery_image_reference
    list;
  inbound_nat_rule :
    azurerm_dev_test_windows_virtual_machine__inbound_nat_rule list;
  timeouts :
    azurerm_dev_test_windows_virtual_machine__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_windows_virtual_machine *)

let azurerm_dev_test_windows_virtual_machine ?allow_claim
    ?disallow_public_ip_address ?id ?notes ?tags ?timeouts ~lab_name
    ~lab_subnet_name ~lab_virtual_network_id ~location ~name
    ~password ~resource_group_name ~size ~storage_type ~username
    ~gallery_image_reference ~inbound_nat_rule __resource_id =
  let __resource_type = "azurerm_dev_test_windows_virtual_machine" in
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
      storage_type;
      tags;
      username;
      gallery_image_reference;
      inbound_nat_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_windows_virtual_machine __resource);
  ()
