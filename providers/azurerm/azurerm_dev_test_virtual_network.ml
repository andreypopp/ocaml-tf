(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type subnet = {
  use_in_virtual_machine_creation : string prop option; [@option]
      (** use_in_virtual_machine_creation *)
  use_public_ip_address : string prop option; [@option]
      (** use_public_ip_address *)
}
[@@deriving yojson_of]
(** subnet *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_test_virtual_network = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  lab_name : string prop;  (** lab_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  subnet : subnet list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_virtual_network *)

let subnet ?use_in_virtual_machine_creation ?use_public_ip_address ()
    : subnet =
  { use_in_virtual_machine_creation; use_public_ip_address }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_test_virtual_network ?description ?id ?tags ?timeouts
    ~lab_name ~name ~resource_group_name ~subnet () :
    azurerm_dev_test_virtual_network =
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

type t = {
  description : string prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
}

let register ?tf_module ?description ?id ?tags ?timeouts ~lab_name
    ~name ~resource_group_name ~subnet __resource_id =
  let __resource_type = "azurerm_dev_test_virtual_network" in
  let __resource =
    azurerm_dev_test_virtual_network ?description ?id ?tags ?timeouts
      ~lab_name ~name ~resource_group_name ~subnet ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_virtual_network __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       lab_name =
         Prop.computed __resource_type __resource_id "lab_name";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       unique_identifier =
         Prop.computed __resource_type __resource_id
           "unique_identifier";
     }
      : t)
  in
  __resource_attributes
