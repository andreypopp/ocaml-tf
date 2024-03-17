(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lab_service_plan__default_auto_shutdown = {
  disconnect_delay : string prop option; [@option]
      (** disconnect_delay *)
  idle_delay : string prop option; [@option]  (** idle_delay *)
  no_connect_delay : string prop option; [@option]
      (** no_connect_delay *)
  shutdown_on_idle : string prop option; [@option]
      (** shutdown_on_idle *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan__default_auto_shutdown *)

type azurerm_lab_service_plan__default_connection = {
  client_rdp_access : string prop option; [@option]
      (** client_rdp_access *)
  client_ssh_access : string prop option; [@option]
      (** client_ssh_access *)
  web_rdp_access : string prop option; [@option]
      (** web_rdp_access *)
  web_ssh_access : string prop option; [@option]
      (** web_ssh_access *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan__default_connection *)

type azurerm_lab_service_plan__support = {
  email : string prop option; [@option]  (** email *)
  instructions : string prop option; [@option]  (** instructions *)
  phone : string prop option; [@option]  (** phone *)
  url : string prop option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan__support *)

type azurerm_lab_service_plan__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan__timeouts *)

type azurerm_lab_service_plan = {
  allowed_regions : string prop list;  (** allowed_regions *)
  default_network_subnet_id : string prop option; [@option]
      (** default_network_subnet_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  shared_gallery_id : string prop option; [@option]
      (** shared_gallery_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  default_auto_shutdown :
    azurerm_lab_service_plan__default_auto_shutdown list;
  default_connection :
    azurerm_lab_service_plan__default_connection list;
  support : azurerm_lab_service_plan__support list;
  timeouts : azurerm_lab_service_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan *)

type t = {
  allowed_regions : string list prop;
  default_network_subnet_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_gallery_id : string prop;
  tags : (string * string) list prop;
}

let azurerm_lab_service_plan ?default_network_subnet_id ?id
    ?shared_gallery_id ?tags ?timeouts ~allowed_regions ~location
    ~name ~resource_group_name ~default_auto_shutdown
    ~default_connection ~support __resource_id =
  let __resource_type = "azurerm_lab_service_plan" in
  let __resource =
    ({
       allowed_regions;
       default_network_subnet_id;
       id;
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
      : azurerm_lab_service_plan)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lab_service_plan __resource);
  let __resource_attributes =
    ({
       allowed_regions =
         Prop.computed __resource_type __resource_id
           "allowed_regions";
       default_network_subnet_id =
         Prop.computed __resource_type __resource_id
           "default_network_subnet_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       shared_gallery_id =
         Prop.computed __resource_type __resource_id
           "shared_gallery_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
