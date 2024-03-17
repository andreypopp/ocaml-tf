(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lab_service_lab__auto_shutdown = {
  disconnect_delay : string prop option; [@option]
      (** disconnect_delay *)
  idle_delay : string prop option; [@option]  (** idle_delay *)
  no_connect_delay : string prop option; [@option]
      (** no_connect_delay *)
  shutdown_on_idle : string prop option; [@option]
      (** shutdown_on_idle *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__auto_shutdown *)

type azurerm_lab_service_lab__connection_setting = {
  client_rdp_access : string prop option; [@option]
      (** client_rdp_access *)
  client_ssh_access : string prop option; [@option]
      (** client_ssh_access *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__connection_setting *)

type azurerm_lab_service_lab__network = {
  load_balancer_id : string prop;  (** load_balancer_id *)
  public_ip_id : string prop;  (** public_ip_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__network *)

type azurerm_lab_service_lab__roster = {
  active_directory_group_id : string prop option; [@option]
      (** active_directory_group_id *)
  lms_instance : string prop option; [@option]  (** lms_instance *)
  lti_client_id : string prop option; [@option]  (** lti_client_id *)
  lti_context_id : string prop option; [@option]
      (** lti_context_id *)
  lti_roster_endpoint : string prop option; [@option]
      (** lti_roster_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__roster *)

type azurerm_lab_service_lab__security = {
  open_access_enabled : bool prop;  (** open_access_enabled *)
  registration_code : string prop;  (** registration_code *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__security *)

type azurerm_lab_service_lab__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__timeouts *)

type azurerm_lab_service_lab__virtual_machine__admin_user = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine__admin_user *)

type azurerm_lab_service_lab__virtual_machine__image_reference = {
  id : string prop option; [@option]  (** id *)
  offer : string prop option; [@option]  (** offer *)
  publisher : string prop option; [@option]  (** publisher *)
  sku : string prop option; [@option]  (** sku *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine__image_reference *)

type azurerm_lab_service_lab__virtual_machine__non_admin_user = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine__non_admin_user *)

type azurerm_lab_service_lab__virtual_machine__sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_lab__virtual_machine__sku *)

type azurerm_lab_service_lab__virtual_machine = {
  additional_capability_gpu_drivers_installed : bool prop option;
      [@option]
      (** additional_capability_gpu_drivers_installed *)
  create_option : string prop option; [@option]  (** create_option *)
  shared_password_enabled : bool prop option; [@option]
      (** shared_password_enabled *)
  usage_quota : string prop option; [@option]  (** usage_quota *)
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
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  lab_plan_id : string prop option; [@option]  (** lab_plan_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  title : string prop;  (** title *)
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

let azurerm_lab_service_lab ?description ?id ?lab_plan_id ?tags
    ?timeouts ~location ~name ~resource_group_name ~title
    ~auto_shutdown ~connection_setting ~network ~roster ~security
    ~virtual_machine __resource_id =
  let __resource_type = "azurerm_lab_service_lab" in
  let __resource =
    {
      description;
      id;
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
