(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_system_center_virtual_machine_manager_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_system_center_virtual_machine_manager_server__timeouts *)

type azurerm_system_center_virtual_machine_manager_server = {
  custom_location_id : string;  (** custom_location_id *)
  fqdn : string;  (** fqdn *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  password : string;  (** password *)
  port : float option; [@option]  (** port *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  username : string;  (** username *)
  timeouts :
    azurerm_system_center_virtual_machine_manager_server__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_system_center_virtual_machine_manager_server *)

let azurerm_system_center_virtual_machine_manager_server ?id ?port
    ?tags ?timeouts ~custom_location_id ~fqdn ~location ~name
    ~password ~resource_group_name ~username __resource_id =
  let __resource_type =
    "azurerm_system_center_virtual_machine_manager_server"
  in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_system_center_virtual_machine_manager_server
       __resource);
  ()
