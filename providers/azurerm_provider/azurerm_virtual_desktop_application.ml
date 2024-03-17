(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_desktop_application__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_application__timeouts *)

type azurerm_virtual_desktop_application = {
  application_group_id : string;  (** application_group_id *)
  command_line_argument_policy : string;
      (** command_line_argument_policy *)
  command_line_arguments : string option; [@option]
      (** command_line_arguments *)
  description : string option; [@option]  (** description *)
  icon_index : float option; [@option]  (** icon_index *)
  name : string;  (** name *)
  path : string;  (** path *)
  show_in_portal : bool option; [@option]  (** show_in_portal *)
  timeouts : azurerm_virtual_desktop_application__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_application *)

let azurerm_virtual_desktop_application ?command_line_arguments
    ?description ?icon_index ?show_in_portal ?timeouts
    ~application_group_id ~command_line_argument_policy ~name ~path
    __resource_id =
  let __resource_type = "azurerm_virtual_desktop_application" in
  let __resource =
    {
      application_group_id;
      command_line_argument_policy;
      command_line_arguments;
      description;
      icon_index;
      name;
      path;
      show_in_portal;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_application __resource);
  ()
