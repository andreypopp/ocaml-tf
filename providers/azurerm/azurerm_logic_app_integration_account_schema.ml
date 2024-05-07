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

type azurerm_logic_app_integration_account_schema = {
  content : string prop;
  file_name : string prop option; [@option]
  id : string prop option; [@option]
  integration_account_name : string prop;
  metadata : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logic_app_integration_account_schema) -> ()

let yojson_of_azurerm_logic_app_integration_account_schema =
  (function
   | {
       content = v_content;
       file_name = v_file_name;
       id = v_id;
       integration_account_name = v_integration_account_name;
       metadata = v_metadata;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integration_account_name
         in
         ("integration_account_name", arg) :: bnds
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
         match v_file_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_logic_app_integration_account_schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_integration_account_schema

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_schema ?file_name ?id
    ?metadata ?timeouts ~content ~integration_account_name ~name
    ~resource_group_name () :
    azurerm_logic_app_integration_account_schema =
  {
    content;
    file_name;
    id;
    integration_account_name;
    metadata;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  content : string prop;
  file_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?file_name ?id ?metadata ?timeouts ~content
    ~integration_account_name ~name ~resource_group_name __id =
  let __type = "azurerm_logic_app_integration_account_schema" in
  let __attrs =
    ({
       tf_name = __id;
       content = Prop.computed __type __id "content";
       file_name = Prop.computed __type __id "file_name";
       id = Prop.computed __type __id "id";
       integration_account_name =
         Prop.computed __type __id "integration_account_name";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_integration_account_schema
        (azurerm_logic_app_integration_account_schema ?file_name ?id
           ?metadata ?timeouts ~content ~integration_account_name
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?file_name ?id ?metadata ?timeouts ~content
    ~integration_account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?file_name ?id ?metadata ?timeouts ~content
      ~integration_account_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
