(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_virtual_desktop_application = {
  application_group_id : string prop;
  command_line_argument_policy : string prop;
  command_line_arguments : string prop option; [@option]
  description : string prop option; [@option]
  friendly_name : string prop option; [@option]
  icon_index : float prop option; [@option]
  icon_path : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  path : string prop;
  show_in_portal : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_desktop_application) -> ()

let yojson_of_azurerm_virtual_desktop_application =
  (function
   | {
       application_group_id = v_application_group_id;
       command_line_argument_policy = v_command_line_argument_policy;
       command_line_arguments = v_command_line_arguments;
       description = v_description;
       friendly_name = v_friendly_name;
       icon_index = v_icon_index;
       icon_path = v_icon_path;
       id = v_id;
       name = v_name;
       path = v_path;
       show_in_portal = v_show_in_portal;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_show_in_portal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "show_in_portal", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_icon_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "icon_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_icon_index with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "icon_index", arg in
             bnd :: bnds
       in
       let bnds =
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command_line_arguments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "command_line_arguments", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_command_line_argument_policy
         in
         ("command_line_argument_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_group_id
         in
         ("application_group_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_desktop_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_desktop_application

[@@@deriving.end]

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
