(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type basic_auth = {
  environments : string prop;  (** environments *)
  password : string prop;  (** password *)
}
[@@deriving yojson_of]
(** basic_auth *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_static_web_app = {
  app_settings : (string * string prop) list option; [@option]
      (** app_settings *)
  configuration_file_changes_enabled : bool prop option; [@option]
      (** configuration_file_changes_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  preview_environments_enabled : bool prop option; [@option]
      (** preview_environments_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_size : string prop option; [@option]  (** sku_size *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  basic_auth : basic_auth list;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_static_web_app *)

let basic_auth ~environments ~password () : basic_auth =
  { environments; password }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_static_web_app ?app_settings
    ?configuration_file_changes_enabled ?id
    ?preview_environments_enabled ?sku_size ?sku_tier ?tags ?timeouts
    ~location ~name ~resource_group_name ~basic_auth ~identity () :
    azurerm_static_web_app =
  {
    app_settings;
    configuration_file_changes_enabled;
    id;
    location;
    name;
    preview_environments_enabled;
    resource_group_name;
    sku_size;
    sku_tier;
    tags;
    basic_auth;
    identity;
    timeouts;
  }

type t = {
  api_key : string prop;
  app_settings : (string * string) list prop;
  configuration_file_changes_enabled : bool prop;
  default_host_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  preview_environments_enabled : bool prop;
  resource_group_name : string prop;
  sku_size : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
}

let make ?app_settings ?configuration_file_changes_enabled ?id
    ?preview_environments_enabled ?sku_size ?sku_tier ?tags ?timeouts
    ~location ~name ~resource_group_name ~basic_auth ~identity __id =
  let __type = "azurerm_static_web_app" in
  let __attrs =
    ({
       api_key = Prop.computed __type __id "api_key";
       app_settings = Prop.computed __type __id "app_settings";
       configuration_file_changes_enabled =
         Prop.computed __type __id
           "configuration_file_changes_enabled";
       default_host_name =
         Prop.computed __type __id "default_host_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       preview_environments_enabled =
         Prop.computed __type __id "preview_environments_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_size = Prop.computed __type __id "sku_size";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_static_web_app
        (azurerm_static_web_app ?app_settings
           ?configuration_file_changes_enabled ?id
           ?preview_environments_enabled ?sku_size ?sku_tier ?tags
           ?timeouts ~location ~name ~resource_group_name ~basic_auth
           ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings
    ?configuration_file_changes_enabled ?id
    ?preview_environments_enabled ?sku_size ?sku_tier ?tags ?timeouts
    ~location ~name ~resource_group_name ~basic_auth ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?configuration_file_changes_enabled ?id
      ?preview_environments_enabled ?sku_size ?sku_tier ?tags
      ?timeouts ~location ~name ~resource_group_name ~basic_auth
      ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
