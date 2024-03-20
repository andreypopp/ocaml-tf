(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type file = {
  content : string prop;  (** The content of the file. *)
  name : string prop;  (** The filename of the file to be uploaded. *)
}
[@@deriving yojson_of]
(** file *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_function_app_function = {
  config_json : string prop;
      (** The config for this Function in JSON format. *)
  enabled : bool prop option; [@option]
      (** Should this function be enabled. Defaults to `true`. *)
  function_app_id : string prop;
      (** The ID of the Function App in which this function should reside. *)
  id : string prop option; [@option]  (** id *)
  language : string prop option; [@option]
      (** The language the Function is written in. *)
  name : string prop;  (** The name of the function. *)
  test_data : string prop option; [@option]
      (** The test data for the function. *)
  file : file list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app_function *)

let file ~content ~name () : file = { content; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_function_app_function ?enabled ?id ?language ?test_data
    ?timeouts ~config_json ~function_app_id ~name ~file () :
    azurerm_function_app_function =
  {
    config_json;
    enabled;
    function_app_id;
    id;
    language;
    name;
    test_data;
    file;
    timeouts;
  }

type t = {
  config_json : string prop;
  config_url : string prop;
  enabled : bool prop;
  function_app_id : string prop;
  id : string prop;
  invocation_url : string prop;
  language : string prop;
  name : string prop;
  script_root_path_url : string prop;
  script_url : string prop;
  secrets_file_url : string prop;
  test_data : string prop;
  test_data_url : string prop;
  url : string prop;
}

let make ?enabled ?id ?language ?test_data ?timeouts ~config_json
    ~function_app_id ~name ~file __id =
  let __type = "azurerm_function_app_function" in
  let __attrs =
    ({
       config_json = Prop.computed __type __id "config_json";
       config_url = Prop.computed __type __id "config_url";
       enabled = Prop.computed __type __id "enabled";
       function_app_id = Prop.computed __type __id "function_app_id";
       id = Prop.computed __type __id "id";
       invocation_url = Prop.computed __type __id "invocation_url";
       language = Prop.computed __type __id "language";
       name = Prop.computed __type __id "name";
       script_root_path_url =
         Prop.computed __type __id "script_root_path_url";
       script_url = Prop.computed __type __id "script_url";
       secrets_file_url =
         Prop.computed __type __id "secrets_file_url";
       test_data = Prop.computed __type __id "test_data";
       test_data_url = Prop.computed __type __id "test_data_url";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_function_app_function
        (azurerm_function_app_function ?enabled ?id ?language
           ?test_data ?timeouts ~config_json ~function_app_id ~name
           ~file ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?language ?test_data ?timeouts
    ~config_json ~function_app_id ~name ~file __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?language ?test_data ?timeouts ~config_json
      ~function_app_id ~name ~file __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
