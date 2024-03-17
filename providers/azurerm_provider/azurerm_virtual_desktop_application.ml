(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_desktop_application__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_application__timeouts *)

type azurerm_virtual_desktop_application = {
  application_group_id : string prop;  (** application_group_id *)
  command_line_argument_policy : string prop;
      (** command_line_argument_policy *)
  command_line_arguments : string prop option; [@option]
      (** command_line_arguments *)
  description : string prop option; [@option]  (** description *)
  friendly_name : string prop option; [@option]  (** friendly_name *)
  icon_index : float prop option; [@option]  (** icon_index *)
  icon_path : string prop option; [@option]  (** icon_path *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  path : string prop;  (** path *)
  show_in_portal : bool prop option; [@option]  (** show_in_portal *)
  timeouts : azurerm_virtual_desktop_application__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_application *)

let azurerm_virtual_desktop_application ?command_line_arguments
    ?description ?friendly_name ?icon_index ?icon_path ?id
    ?show_in_portal ?timeouts ~application_group_id
    ~command_line_argument_policy ~name ~path __resource_id =
  let __resource_type = "azurerm_virtual_desktop_application" in
  let __resource =
    {
      application_group_id;
      command_line_argument_policy;
      command_line_arguments;
      description;
      friendly_name;
      icon_index;
      icon_path;
      id;
      name;
      path;
      show_in_portal;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_application __resource);
  ()
