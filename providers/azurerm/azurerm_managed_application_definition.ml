(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorization = {
  role_definition_id : string prop;  (** role_definition_id *)
  service_principal_id : string prop;  (** service_principal_id *)
}
[@@deriving yojson_of]
(** authorization *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_managed_application_definition = {
  create_ui_definition : string prop option; [@option]
      (** create_ui_definition *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  lock_level : string prop;  (** lock_level *)
  main_template : string prop option; [@option]  (** main_template *)
  name : string prop;  (** name *)
  package_enabled : bool prop option; [@option]
      (** package_enabled *)
  package_file_uri : string prop option; [@option]
      (** package_file_uri *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  authorization : authorization list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_application_definition *)

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
