(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorization = {
  role_definition_id : string prop;
  service_principal_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization) -> ()

let yojson_of_authorization =
  (function
   | {
       role_definition_id = v_role_definition_id;
       service_principal_id = v_service_principal_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_principal_id
         in
         ("service_principal_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_role_definition_id
         in
         ("role_definition_id", arg) :: bnds
       in
       `Assoc bnds
    : authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization

[@@@deriving.end]

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

type azurerm_managed_application_definition = {
  create_ui_definition : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  location : string prop;
  lock_level : string prop;
  main_template : string prop option; [@option]
  name : string prop;
  package_enabled : bool prop option; [@option]
  package_file_uri : string prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  authorization : authorization list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_managed_application_definition) -> ()

let yojson_of_azurerm_managed_application_definition =
  (function
   | {
       create_ui_definition = v_create_ui_definition;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       lock_level = v_lock_level;
       main_template = v_main_template;
       name = v_name;
       package_enabled = v_package_enabled;
       package_file_uri = v_package_file_uri;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       authorization = v_authorization;
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
         let arg =
           yojson_of_list yojson_of_authorization v_authorization
         in
         ("authorization", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_package_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "package_file_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_package_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "package_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_main_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "main_template", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lock_level in
         ("lock_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
         match v_create_ui_definition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_ui_definition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_managed_application_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_managed_application_definition

[@@@deriving.end]

let authorization ~role_definition_id ~service_principal_id () :
    authorization =
  { role_definition_id; service_principal_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_managed_application_definition ?create_ui_definition
    ?description ?id ?main_template ?package_enabled
    ?package_file_uri ?tags ?timeouts ~display_name ~location
    ~lock_level ~name ~resource_group_name ~authorization () :
    azurerm_managed_application_definition =
  {
    create_ui_definition;
    description;
    display_name;
    id;
    location;
    lock_level;
    main_template;
    name;
    package_enabled;
    package_file_uri;
    resource_group_name;
    tags;
    authorization;
    timeouts;
  }

type t = {
  tf_name : string;
  create_ui_definition : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  lock_level : string prop;
  main_template : string prop;
  name : string prop;
  package_enabled : bool prop;
  package_file_uri : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?create_ui_definition ?description ?id ?main_template
    ?package_enabled ?package_file_uri ?tags ?timeouts ~display_name
    ~location ~lock_level ~name ~resource_group_name ~authorization
    __id =
  let __type = "azurerm_managed_application_definition" in
  let __attrs =
    ({
       tf_name = __id;
       create_ui_definition =
         Prop.computed __type __id "create_ui_definition";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       lock_level = Prop.computed __type __id "lock_level";
       main_template = Prop.computed __type __id "main_template";
       name = Prop.computed __type __id "name";
       package_enabled = Prop.computed __type __id "package_enabled";
       package_file_uri =
         Prop.computed __type __id "package_file_uri";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_managed_application_definition
        (azurerm_managed_application_definition ?create_ui_definition
           ?description ?id ?main_template ?package_enabled
           ?package_file_uri ?tags ?timeouts ~display_name ~location
           ~lock_level ~name ~resource_group_name ~authorization ());
    attrs = __attrs;
  }

let register ?tf_module ?create_ui_definition ?description ?id
    ?main_template ?package_enabled ?package_file_uri ?tags ?timeouts
    ~display_name ~location ~lock_level ~name ~resource_group_name
    ~authorization __id =
  let (r : _ Tf_core.resource) =
    make ?create_ui_definition ?description ?id ?main_template
      ?package_enabled ?package_file_uri ?tags ?timeouts
      ~display_name ~location ~lock_level ~name ~resource_group_name
      ~authorization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
