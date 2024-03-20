(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_application *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_application ?command_line_arguments
    ?description ?friendly_name ?icon_index ?icon_path ?id
    ?show_in_portal ?timeouts ~application_group_id
    ~command_line_argument_policy ~name ~path () :
    azurerm_virtual_desktop_application =
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

type t = {
  application_group_id : string prop;
  command_line_argument_policy : string prop;
  command_line_arguments : string prop;
  description : string prop;
  friendly_name : string prop;
  icon_index : float prop;
  icon_path : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  show_in_portal : bool prop;
}

let make ?command_line_arguments ?description ?friendly_name
    ?icon_index ?icon_path ?id ?show_in_portal ?timeouts
    ~application_group_id ~command_line_argument_policy ~name ~path
    __id =
  let __type = "azurerm_virtual_desktop_application" in
  let __attrs =
    ({
       application_group_id =
         Prop.computed __type __id "application_group_id";
       command_line_argument_policy =
         Prop.computed __type __id "command_line_argument_policy";
       command_line_arguments =
         Prop.computed __type __id "command_line_arguments";
       description = Prop.computed __type __id "description";
       friendly_name = Prop.computed __type __id "friendly_name";
       icon_index = Prop.computed __type __id "icon_index";
       icon_path = Prop.computed __type __id "icon_path";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       show_in_portal = Prop.computed __type __id "show_in_portal";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_application
        (azurerm_virtual_desktop_application ?command_line_arguments
           ?description ?friendly_name ?icon_index ?icon_path ?id
           ?show_in_portal ?timeouts ~application_group_id
           ~command_line_argument_policy ~name ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?command_line_arguments ?description
    ?friendly_name ?icon_index ?icon_path ?id ?show_in_portal
    ?timeouts ~application_group_id ~command_line_argument_policy
    ~name ~path __id =
  let (r : _ Tf_core.resource) =
    make ?command_line_arguments ?description ?friendly_name
      ?icon_index ?icon_path ?id ?show_in_portal ?timeouts
      ~application_group_id ~command_line_argument_policy ~name ~path
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
