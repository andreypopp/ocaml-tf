(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type config_file = {
  content : string prop;
  virtual_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_file) -> ()

let yojson_of_config_file =
  (function
   | { content = v_content; virtual_path = v_virtual_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_path in
         ("virtual_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : config_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_file

[@@@deriving.end]

type protected_file = {
  content : string prop;
  virtual_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protected_file) -> ()

let yojson_of_protected_file =
  (function
   | { content = v_content; virtual_path = v_virtual_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_path in
         ("virtual_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : protected_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protected_file

[@@@deriving.end]

type azurerm_nginx_configuration = {
  id : string prop option; [@option]
  nginx_deployment_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_nginx_configuration) -> ()

let yojson_of_azurerm_nginx_configuration =
  (function
   | {
       id = v_id;
       nginx_deployment_id = v_nginx_deployment_id;
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
           yojson_of_prop yojson_of_string v_nginx_deployment_id
         in
         ("nginx_deployment_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_nginx_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_nginx_configuration

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_nginx_configuration ?id ?timeouts ~nginx_deployment_id ()
    : azurerm_nginx_configuration =
  { id; nginx_deployment_id; timeouts }

type t = {
  config_file : config_file list prop;
  id : string prop;
  nginx_deployment_id : string prop;
  package_data : string prop;
  protected_file : protected_file list prop;
  root_file : string prop;
}

let make ?id ?timeouts ~nginx_deployment_id __id =
  let __type = "azurerm_nginx_configuration" in
  let __attrs =
    ({
       config_file = Prop.computed __type __id "config_file";
       id = Prop.computed __type __id "id";
       nginx_deployment_id =
         Prop.computed __type __id "nginx_deployment_id";
       package_data = Prop.computed __type __id "package_data";
       protected_file = Prop.computed __type __id "protected_file";
       root_file = Prop.computed __type __id "root_file";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_nginx_configuration
        (azurerm_nginx_configuration ?id ?timeouts
           ~nginx_deployment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~nginx_deployment_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~nginx_deployment_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
