(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_lab_service_lab__auto_shutdown = {
  disconnect_delay : string option; [@option]
      (** disconnect_delay *)
  idle_delay : string option; [@option]  (** idle_delay *)
  no_connect_delay : string option; [@option]
      (** no_connect_delay *)
  shutdown_on_idle : string option; [@option]  (** shutdown_on_idle *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__auto_shutdown *)

type azurerm_lab_service_lab__connection_setting = {
  client_rdp_access : string option; [@option]
      (** client_rdp_access *)
  client_ssh_access : string option; [@option]
      (** client_ssh_access *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__connection_setting *)

type azurerm_lab_service_lab__network = {
  load_balancer_id : string;  (** load_balancer_id *)
  public_ip_id : string;  (** public_ip_id *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__network *)

type azurerm_lab_service_lab__roster = {
  active_directory_group_id : string option; [@option]
      (** active_directory_group_id *)
  lms_instance : string option; [@option]  (** lms_instance *)
  lti_client_id : string option; [@option]  (** lti_client_id *)
  lti_context_id : string option; [@option]  (** lti_context_id *)
  lti_roster_endpoint : string option; [@option]
      (** lti_roster_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__roster *)

type azurerm_lab_service_lab__security = {
  open_access_enabled : bool;  (** open_access_enabled *)
  registration_code : string;  (** registration_code *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__security *)

type azurerm_lab_service_lab__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__timeouts *)

type azurerm_lab_service_lab__virtual_machine__admin_user = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine__admin_user *)

type azurerm_lab_service_lab__virtual_machine__image_reference = {
  id : string option; [@option]  (** id *)
  offer : string option; [@option]  (** offer *)
  publisher : string option; [@option]  (** publisher *)
  sku : string option; [@option]  (** sku *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine__image_reference *)

type azurerm_lab_service_lab__virtual_machine__non_admin_user = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine__non_admin_user *)

type azurerm_lab_service_lab__virtual_machine__sku = {
  capacity : float;  (** capacity *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine__sku *)

type azurerm_lab_service_lab__virtual_machine = {
  additional_capability_gpu_drivers_installed : bool option;
      [@option]
      (** additional_capability_gpu_drivers_installed *)
  create_option : string option; [@option]  (** create_option *)
  shared_password_enabled : bool option; [@option]
      (** shared_password_enabled *)
  usage_quota : string option; [@option]  (** usage_quota *)
  admin_user :
    azurerm_lab_service_lab__virtual_machine__admin_user list;
  image_reference :
    azurerm_lab_service_lab__virtual_machine__image_reference list;
  non_admin_user :
    azurerm_lab_service_lab__virtual_machine__non_admin_user list;
  sku : azurerm_lab_service_lab__virtual_machine__sku list;
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine *)

type azurerm_lab_service_lab = {
  description : string option; [@option]  (** description *)
  lab_plan_id : string option; [@option]  (** lab_plan_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  title : string;  (** title *)
  auto_shutdown : azurerm_lab_service_lab__auto_shutdown list;
  connection_setting :
    azurerm_lab_service_lab__connection_setting list;
  network : azurerm_lab_service_lab__network list;
  roster : azurerm_lab_service_lab__roster list;
  security : azurerm_lab_service_lab__security list;
  timeouts : azurerm_lab_service_lab__timeouts option;
  virtual_machine : azurerm_lab_service_lab__virtual_machine list;
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab *)

let azurerm_lab_service_lab ?description ?lab_plan_id ?tags ?timeouts
    ~location ~name ~resource_group_name ~title ~auto_shutdown
    ~connection_setting ~network ~roster ~security ~virtual_machine
    __resource_id =
  let __resource_type = "azurerm_lab_service_lab" in
  let __resource =
    {
      description;
      lab_plan_id;
      location;
      name;
      resource_group_name;
      tags;
      title;
      auto_shutdown;
      connection_setting;
      network;
      roster;
      security;
      timeouts;
      virtual_machine;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lab_service_lab __resource);
  ()
