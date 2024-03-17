(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_lab_service_plan__default_auto_shutdown = {
  disconnect_delay : string option; [@option]
      (** disconnect_delay *)
  idle_delay : string option; [@option]  (** idle_delay *)
  no_connect_delay : string option; [@option]
      (** no_connect_delay *)
  shutdown_on_idle : string option; [@option]  (** shutdown_on_idle *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan__default_auto_shutdown *)

type azurerm_lab_service_plan__default_connection = {
  client_rdp_access : string option; [@option]
      (** client_rdp_access *)
  client_ssh_access : string option; [@option]
      (** client_ssh_access *)
  web_rdp_access : string option; [@option]  (** web_rdp_access *)
  web_ssh_access : string option; [@option]  (** web_ssh_access *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan__default_connection *)

type azurerm_lab_service_plan__support = {
  email : string option; [@option]  (** email *)
  instructions : string option; [@option]  (** instructions *)
  phone : string option; [@option]  (** phone *)
  url : string option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan__support *)

type azurerm_lab_service_plan__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan__timeouts *)

type azurerm_lab_service_plan = {
  allowed_regions : string list;  (** allowed_regions *)
  default_network_subnet_id : string option; [@option]
      (** default_network_subnet_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  shared_gallery_id : string option; [@option]
      (** shared_gallery_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  default_auto_shutdown :
    azurerm_lab_service_plan__default_auto_shutdown list;
  default_connection :
    azurerm_lab_service_plan__default_connection list;
  support : azurerm_lab_service_plan__support list;
  timeouts : azurerm_lab_service_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan *)

let azurerm_lab_service_plan ?default_network_subnet_id
    ?shared_gallery_id ?tags ?timeouts ~allowed_regions ~location
    ~name ~resource_group_name ~default_auto_shutdown
    ~default_connection ~support __resource_id =
  let __resource_type = "azurerm_lab_service_plan" in
  let __resource =
    {
      allowed_regions;
      default_network_subnet_id;
      location;
      name;
      resource_group_name;
      shared_gallery_id;
      tags;
      default_auto_shutdown;
      default_connection;
      support;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lab_service_plan __resource);
  ()
