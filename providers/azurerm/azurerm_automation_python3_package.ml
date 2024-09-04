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

type azurerm_automation_python3_package = {
  automation_account_name : string prop;
  content_uri : string prop;
  content_version : string prop option; [@option]
  hash_algorithm : string prop option; [@option]
  hash_value : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_python3_package) -> ()

let yojson_of_azurerm_automation_python3_package =
  (function
   | {
       automation_account_name = v_automation_account_name;
       content_uri = v_content_uri;
       content_version = v_content_version;
       hash_algorithm = v_hash_algorithm;
       hash_value = v_hash_value;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_hash_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hash_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hash_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hash_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_uri in
         ("content_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_python3_package ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_python3_package

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_python3_package ?content_version
    ?hash_algorithm ?hash_value ?id ?tags ?timeouts
    ~automation_account_name ~content_uri ~name ~resource_group_name
    () : azurerm_automation_python3_package =
  {
    automation_account_name;
    content_uri;
    content_version;
    hash_algorithm;
    hash_value;
    id;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  automation_account_name : string prop;
  content_uri : string prop;
  content_version : string prop;
  hash_algorithm : string prop;
  hash_value : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?content_version ?hash_algorithm ?hash_value ?id ?tags
    ?timeouts ~automation_account_name ~content_uri ~name
    ~resource_group_name __id =
  let __type = "azurerm_automation_python3_package" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       content_uri = Prop.computed __type __id "content_uri";
       content_version = Prop.computed __type __id "content_version";
       hash_algorithm = Prop.computed __type __id "hash_algorithm";
       hash_value = Prop.computed __type __id "hash_value";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_automation_python3_package
        (azurerm_automation_python3_package ?content_version
           ?hash_algorithm ?hash_value ?id ?tags ?timeouts
           ~automation_account_name ~content_uri ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?content_version ?hash_algorithm ?hash_value
    ?id ?tags ?timeouts ~automation_account_name ~content_uri ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?content_version ?hash_algorithm ?hash_value ?id ?tags
      ?timeouts ~automation_account_name ~content_uri ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
