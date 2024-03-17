(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_linux_virtual_machine__gallery_image_reference = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_linux_virtual_machine__gallery_image_reference *)

type azurerm_dev_test_linux_virtual_machine__inbound_nat_rule = {
  backend_port : float prop;  (** backend_port *)
  frontend_port : float prop;  (** frontend_port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_linux_virtual_machine__inbound_nat_rule *)

type azurerm_dev_test_linux_virtual_machine__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_linux_virtual_machine__timeouts *)

type azurerm_dev_test_linux_virtual_machine = {
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
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  size : string prop;  (** size *)
  ssh_key : string prop option; [@option]  (** ssh_key *)
  storage_type : string prop;  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  username : string prop;  (** username *)
  gallery_image_reference :
    azurerm_dev_test_linux_virtual_machine__gallery_image_reference
    list;
  inbound_nat_rule :
    azurerm_dev_test_linux_virtual_machine__inbound_nat_rule list;
  timeouts : azurerm_dev_test_linux_virtual_machine__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_linux_virtual_machine *)

type t = {
  allow_claim : bool prop;
  disallow_public_ip_address : bool prop;
  fqdn : string prop;
  id : string prop;
  lab_name : string prop;
  lab_subnet_name : string prop;
  lab_virtual_network_id : string prop;
  location : string prop;
  name : string prop;
  notes : string prop;
  password : string prop;
  resource_group_name : string prop;
  size : string prop;
  ssh_key : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
  username : string prop;
}

let azurerm_dev_test_linux_virtual_machine ?allow_claim
    ?disallow_public_ip_address ?id ?notes ?password ?ssh_key ?tags
    ?timeouts ~lab_name ~lab_subnet_name ~lab_virtual_network_id
    ~location ~name ~resource_group_name ~size ~storage_type
    ~username ~gallery_image_reference ~inbound_nat_rule
    __resource_id =
  let __resource_type = "azurerm_dev_test_linux_virtual_machine" in
  let __resource =
    ({
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
      : azurerm_dev_test_linux_virtual_machine)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_linux_virtual_machine __resource);
  let __resource_attributes =
    ({
       allow_claim =
         Prop.computed __resource_type __resource_id "allow_claim";
       disallow_public_ip_address =
         Prop.computed __resource_type __resource_id
           "disallow_public_ip_address";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       lab_name =
         Prop.computed __resource_type __resource_id "lab_name";
       lab_subnet_name =
         Prop.computed __resource_type __resource_id
           "lab_subnet_name";
       lab_virtual_network_id =
         Prop.computed __resource_type __resource_id
           "lab_virtual_network_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       notes = Prop.computed __resource_type __resource_id "notes";
       password =
         Prop.computed __resource_type __resource_id "password";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       size = Prop.computed __resource_type __resource_id "size";
       ssh_key =
         Prop.computed __resource_type __resource_id "ssh_key";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       unique_identifier =
         Prop.computed __resource_type __resource_id
           "unique_identifier";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
