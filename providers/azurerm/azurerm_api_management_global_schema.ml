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

type azurerm_api_management_global_schema = {
  api_management_name : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  resource_group_name : string prop;
  schema_id : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_global_schema) -> ()

let yojson_of_azurerm_api_management_global_schema =
  (function
   | {
       api_management_name = v_api_management_name;
       description = v_description;
       id = v_id;
       resource_group_name = v_resource_group_name;
       schema_id = v_schema_id;
       type_ = v_type_;
       value = v_value;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema_id in
         ("schema_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_global_schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_global_schema

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_global_schema ?description ?id ?timeouts
    ~api_management_name ~resource_group_name ~schema_id ~type_
    ~value () : azurerm_api_management_global_schema =
  {
    api_management_name;
    description;
    id;
    resource_group_name;
    schema_id;
    type_;
    value;
    timeouts;
  }

type t = {
  tf_name : string;
  api_management_name : string prop;
  description : string prop;
  id : string prop;
  resource_group_name : string prop;
  schema_id : string prop;
  type_ : string prop;
  value : string prop;
}

let make ?description ?id ?timeouts ~api_management_name
    ~resource_group_name ~schema_id ~type_ ~value __id =
  let __type = "azurerm_api_management_global_schema" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       schema_id = Prop.computed __type __id "schema_id";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_global_schema
        (azurerm_api_management_global_schema ?description ?id
           ?timeouts ~api_management_name ~resource_group_name
           ~schema_id ~type_ ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~api_management_name ~resource_group_name ~schema_id ~type_
    ~value __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~api_management_name
      ~resource_group_name ~schema_id ~type_ ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
