(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_virtual_desktop_host_pool__scheduled_agent_updates__schedule = {
  day_of_week : string;  (** day_of_week *)
  hour_of_day : float;  (** hour_of_day *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool__scheduled_agent_updates__schedule *)

type azurerm_virtual_desktop_host_pool__scheduled_agent_updates = {
  enabled : bool option; [@option]  (** enabled *)
  timezone : string option; [@option]  (** timezone *)
  use_session_host_timezone : bool option; [@option]
      (** use_session_host_timezone *)
  schedule :
    azurerm_virtual_desktop_host_pool__scheduled_agent_updates__schedule
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool__scheduled_agent_updates *)

type azurerm_virtual_desktop_host_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool__timeouts *)

type azurerm_virtual_desktop_host_pool = {
  custom_rdp_properties : string option; [@option]
      (** custom_rdp_properties *)
  description : string option; [@option]  (** description *)
  friendly_name : string option; [@option]  (** friendly_name *)
  load_balancer_type : string;  (** load_balancer_type *)
  location : string;  (** location *)
  maximum_sessions_allowed : float option; [@option]
      (** maximum_sessions_allowed *)
  name : string;  (** name *)
  personal_desktop_assignment_type : string option; [@option]
      (** personal_desktop_assignment_type *)
  preferred_app_group_type : string option; [@option]
      (** Preferred App Group type to display *)
  resource_group_name : string;  (** resource_group_name *)
  start_vm_on_connect : bool option; [@option]
      (** start_vm_on_connect *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  validate_environment : bool option; [@option]
      (** validate_environment *)
  vm_template : string option; [@option]  (** vm_template *)
  scheduled_agent_updates :
    azurerm_virtual_desktop_host_pool__scheduled_agent_updates list;
  timeouts : azurerm_virtual_desktop_host_pool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool *)

let azurerm_virtual_desktop_host_pool ?custom_rdp_properties
    ?description ?friendly_name ?maximum_sessions_allowed
    ?personal_desktop_assignment_type ?preferred_app_group_type
    ?start_vm_on_connect ?tags ?validate_environment ?vm_template
    ?timeouts ~load_balancer_type ~location ~name
    ~resource_group_name ~type_ ~scheduled_agent_updates
    __resource_id =
  let __resource_type = "azurerm_virtual_desktop_host_pool" in
  let __resource =
    {
      custom_rdp_properties;
      description;
      friendly_name;
      load_balancer_type;
      location;
      maximum_sessions_allowed;
      name;
      personal_desktop_assignment_type;
      preferred_app_group_type;
      resource_group_name;
      start_vm_on_connect;
      tags;
      type_;
      validate_environment;
      vm_template;
      scheduled_agent_updates;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_host_pool __resource);
  ()
