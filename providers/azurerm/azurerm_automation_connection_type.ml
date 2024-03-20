(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type field = {
  is_encrypted : bool prop option; [@option]
  is_optional : bool prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : field) -> ()

let yojson_of_field =
  (function
   | {
       is_encrypted = v_is_encrypted;
       is_optional = v_is_optional;
       name = v_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_optional", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_encrypted", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : field -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_field

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_automation_connection_type = {
  automation_account_name : string prop;
  id : string prop option; [@option]
  is_global : bool prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  field : field list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_connection_type) -> ()

let yojson_of_azurerm_automation_connection_type =
  (function
   | {
       automation_account_name = v_automation_account_name;
       id = v_id;
       is_global = v_is_global;
       name = v_name;
       resource_group_name = v_resource_group_name;
       field = v_field;
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
         let arg = yojson_of_list yojson_of_field v_field in
         ("field", arg) :: bnds
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
         match v_is_global with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_global", arg in
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
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_connection_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_connection_type

[@@@deriving.end]

let field ?is_encrypted ?is_optional ~name ~type_ () : field =
  { is_encrypted; is_optional; name; type_ }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_automation_connection_type ?id ?is_global ?timeouts
    ~automation_account_name ~name ~resource_group_name ~field () :
    azurerm_automation_connection_type =
  {
    automation_account_name;
    id;
    is_global;
    name;
    resource_group_name;
    field;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  id : string prop;
  is_global : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?is_global ?timeouts ~automation_account_name ~name
    ~resource_group_name ~field __id =
  let __type = "azurerm_automation_connection_type" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       id = Prop.computed __type __id "id";
       is_global = Prop.computed __type __id "is_global";
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
      yojson_of_azurerm_automation_connection_type
        (azurerm_automation_connection_type ?id ?is_global ?timeouts
           ~automation_account_name ~name ~resource_group_name ~field
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_global ?timeouts
    ~automation_account_name ~name ~resource_group_name ~field __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_global ?timeouts ~automation_account_name ~name
      ~resource_group_name ~field __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
