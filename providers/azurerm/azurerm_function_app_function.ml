(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type file = { content : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : file) -> ()

let yojson_of_file =
  (function
   | { content = v_content; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_file

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

type azurerm_function_app_function = {
  config_json : string prop;
  enabled : bool prop option; [@option]
  function_app_id : string prop;
  id : string prop option; [@option]
  language : string prop option; [@option]
  name : string prop;
  test_data : string prop option; [@option]
  file : file list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_function_app_function) -> ()

let yojson_of_azurerm_function_app_function =
  (function
   | {
       config_json = v_config_json;
       enabled = v_enabled;
       function_app_id = v_function_app_id;
       id = v_id;
       language = v_language;
       name = v_name;
       test_data = v_test_data;
       file = v_file;
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
         let arg = yojson_of_list yojson_of_file v_file in
         ("file", arg) :: bnds
       in
       let bnds =
         match v_test_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "test_data", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_function_app_id
         in
         ("function_app_id", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_config_json in
         ("config_json", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_function_app_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_function_app_function

[@@@deriving.end]

let file ~content ~name () : file = { content; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_function_app_function ?enabled ?id ?language ?test_data
    ?(file = []) ?timeouts ~config_json ~function_app_id ~name () :
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
  tf_name : string;
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

let make ?enabled ?id ?language ?test_data ?(file = []) ?timeouts
    ~config_json ~function_app_id ~name __id =
  let __type = "azurerm_function_app_function" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?test_data ~file ?timeouts ~config_json ~function_app_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?language ?test_data
    ?(file = []) ?timeouts ~config_json ~function_app_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?language ?test_data ~file ?timeouts
      ~config_json ~function_app_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
