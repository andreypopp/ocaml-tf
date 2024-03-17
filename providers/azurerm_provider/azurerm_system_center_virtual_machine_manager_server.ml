(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_system_center_virtual_machine_manager_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_system_center_virtual_machine_manager_server__timeouts *)

type azurerm_system_center_virtual_machine_manager_server = {
  custom_location_id : string prop;  (** custom_location_id *)
  fqdn : string prop;  (** fqdn *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  port : float prop option; [@option]  (** port *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  username : string prop;  (** username *)
  timeouts :
    azurerm_system_center_virtual_machine_manager_server__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_system_center_virtual_machine_manager_server *)

type t = {
  custom_location_id : string prop;
  fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  username : string prop;
}

let azurerm_system_center_virtual_machine_manager_server ?id ?port
    ?tags ?timeouts ~custom_location_id ~fqdn ~location ~name
    ~password ~resource_group_name ~username __resource_id =
  let __resource_type =
    "azurerm_system_center_virtual_machine_manager_server"
  in
  let __resource =
    ({
       custom_location_id;
       fqdn;
       id;
       location;
       name;
       password;
       port;
       resource_group_name;
       tags;
       username;
       timeouts;
     }
      : azurerm_system_center_virtual_machine_manager_server)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_system_center_virtual_machine_manager_server
       __resource);
  let __resource_attributes =
    ({
       custom_location_id =
         Prop.computed __resource_type __resource_id
           "custom_location_id";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       port = Prop.computed __resource_type __resource_id "port";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
