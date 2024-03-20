(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_nginx_configuration = {
  id : string prop option; [@option]
  nginx_deployment_id : string prop;
  package_data : string prop option; [@option]
  root_file : string prop;
  config_file : config_file list;
  protected_file : protected_file list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_nginx_configuration) -> ()

let yojson_of_azurerm_nginx_configuration =
  (function
   | {
       id = v_id;
       nginx_deployment_id = v_nginx_deployment_id;
       package_data = v_package_data;
       root_file = v_root_file;
       config_file = v_config_file;
       protected_file = v_protected_file;
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
           yojson_of_list yojson_of_protected_file v_protected_file
         in
         ("protected_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config_file v_config_file
         in
         ("config_file", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_root_file in
         ("root_file", arg) :: bnds
       in
       let bnds =
         match v_package_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "package_data", arg in
             bnd :: bnds
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

let config_file ~content ~virtual_path () : config_file =
  { content; virtual_path }

let protected_file ~content ~virtual_path () : protected_file =
  { content; virtual_path }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_nginx_configuration ?id ?package_data ?timeouts
    ~nginx_deployment_id ~root_file ~config_file ~protected_file () :
    azurerm_nginx_configuration =
  {
    id;
    nginx_deployment_id;
    package_data;
    root_file;
    config_file;
    protected_file;
    timeouts;
  }

type t = {
  id : string prop;
  nginx_deployment_id : string prop;
  package_data : string prop;
  root_file : string prop;
}

let make ?id ?package_data ?timeouts ~nginx_deployment_id ~root_file
    ~config_file ~protected_file __id =
  let __type = "azurerm_nginx_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       nginx_deployment_id =
         Prop.computed __type __id "nginx_deployment_id";
       package_data = Prop.computed __type __id "package_data";
       root_file = Prop.computed __type __id "root_file";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_nginx_configuration
        (azurerm_nginx_configuration ?id ?package_data ?timeouts
           ~nginx_deployment_id ~root_file ~config_file
           ~protected_file ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?package_data ?timeouts
    ~nginx_deployment_id ~root_file ~config_file ~protected_file __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?package_data ?timeouts ~nginx_deployment_id ~root_file
      ~config_file ~protected_file __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
