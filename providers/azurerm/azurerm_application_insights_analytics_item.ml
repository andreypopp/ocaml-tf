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

type azurerm_application_insights_analytics_item = {
  application_insights_id : string prop;
  content : string prop;
  function_alias : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  scope : string prop;
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_application_insights_analytics_item) -> ()

let yojson_of_azurerm_application_insights_analytics_item =
  (function
   | {
       application_insights_id = v_application_insights_id;
       content = v_content;
       function_alias = v_function_alias;
       id = v_id;
       name = v_name;
       scope = v_scope;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
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
         match v_function_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "function_alias", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_insights_id
         in
         ("application_insights_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_application_insights_analytics_item ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_insights_analytics_item

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights_analytics_item ?function_alias ?id
    ?timeouts ~application_insights_id ~content ~name ~scope ~type_
    () : azurerm_application_insights_analytics_item =
  {
    application_insights_id;
    content;
    function_alias;
    id;
    name;
    scope;
    type_;
    timeouts;
  }

type t = {
  application_insights_id : string prop;
  content : string prop;
  function_alias : string prop;
  id : string prop;
  name : string prop;
  scope : string prop;
  time_created : string prop;
  time_modified : string prop;
  type_ : string prop;
  version : string prop;
}

let make ?function_alias ?id ?timeouts ~application_insights_id
    ~content ~name ~scope ~type_ __id =
  let __type = "azurerm_application_insights_analytics_item" in
  let __attrs =
    ({
       application_insights_id =
         Prop.computed __type __id "application_insights_id";
       content = Prop.computed __type __id "content";
       function_alias = Prop.computed __type __id "function_alias";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       scope = Prop.computed __type __id "scope";
       time_created = Prop.computed __type __id "time_created";
       time_modified = Prop.computed __type __id "time_modified";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_analytics_item
        (azurerm_application_insights_analytics_item ?function_alias
           ?id ?timeouts ~application_insights_id ~content ~name
           ~scope ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?function_alias ?id ?timeouts
    ~application_insights_id ~content ~name ~scope ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?function_alias ?id ?timeouts ~application_insights_id
      ~content ~name ~scope ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
