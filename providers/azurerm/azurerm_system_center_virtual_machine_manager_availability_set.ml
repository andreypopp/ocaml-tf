(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_system_center_virtual_machine_manager_availability_set = {
  custom_location_id : string prop;  (** custom_location_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  system_center_virtual_machine_manager_server_id : string prop;
      (** system_center_virtual_machine_manager_server_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_system_center_virtual_machine_manager_availability_set *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_system_center_virtual_machine_manager_availability_set
    ?id ?tags ?timeouts ~custom_location_id ~location ~name
    ~resource_group_name
    ~system_center_virtual_machine_manager_server_id () :
    azurerm_system_center_virtual_machine_manager_availability_set =
  {
    custom_location_id;
    id;
    location;
    name;
    resource_group_name;
    system_center_virtual_machine_manager_server_id;
    tags;
    timeouts;
  }

type t = {
  custom_location_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  system_center_virtual_machine_manager_server_id : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~custom_location_id
    ~location ~name ~resource_group_name
    ~system_center_virtual_machine_manager_server_id __resource_id =
  let __resource_type =
    "azurerm_system_center_virtual_machine_manager_availability_set"
  in
  let __resource =
    azurerm_system_center_virtual_machine_manager_availability_set
      ?id ?tags ?timeouts ~custom_location_id ~location ~name
      ~resource_group_name
      ~system_center_virtual_machine_manager_server_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_system_center_virtual_machine_manager_availability_set
       __resource);
  let __resource_attributes =
    ({
       custom_location_id =
         Prop.computed __resource_type __resource_id
           "custom_location_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       system_center_virtual_machine_manager_server_id =
         Prop.computed __resource_type __resource_id
           "system_center_virtual_machine_manager_server_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
