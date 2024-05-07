(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_log_analytics_saved_search = {
  category : string prop;
  display_name : string prop;
  function_alias : string prop option; [@option]
  function_parameters : string prop list option; [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  query : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_log_analytics_saved_search) -> ()

let yojson_of_azurerm_log_analytics_saved_search =
  (function
   | {
       category = v_category;
       display_name = v_display_name;
       function_alias = v_function_alias;
       function_parameters = v_function_parameters;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       query = v_query;
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
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
         match v_function_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "function_parameters", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_saved_search ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_saved_search

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_log_analytics_saved_search ?function_alias
    ?function_parameters ?id ?tags ?timeouts ~category ~display_name
    ~log_analytics_workspace_id ~name ~query () :
    azurerm_log_analytics_saved_search =
  {
    category;
    display_name;
    function_alias;
    function_parameters;
    id;
    log_analytics_workspace_id;
    name;
    query;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  category : string prop;
  display_name : string prop;
  function_alias : string prop;
  function_parameters : string list prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  query : string prop;
  tags : (string * string) list prop;
}

let make ?function_alias ?function_parameters ?id ?tags ?timeouts
    ~category ~display_name ~log_analytics_workspace_id ~name ~query
    __id =
  let __type = "azurerm_log_analytics_saved_search" in
  let __attrs =
    ({
       tf_name = __id;
       category = Prop.computed __type __id "category";
       display_name = Prop.computed __type __id "display_name";
       function_alias = Prop.computed __type __id "function_alias";
       function_parameters =
         Prop.computed __type __id "function_parameters";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       query = Prop.computed __type __id "query";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_saved_search
        (azurerm_log_analytics_saved_search ?function_alias
           ?function_parameters ?id ?tags ?timeouts ~category
           ~display_name ~log_analytics_workspace_id ~name ~query ());
    attrs = __attrs;
  }

let register ?tf_module ?function_alias ?function_parameters ?id
    ?tags ?timeouts ~category ~display_name
    ~log_analytics_workspace_id ~name ~query __id =
  let (r : _ Tf_core.resource) =
    make ?function_alias ?function_parameters ?id ?tags ?timeouts
      ~category ~display_name ~log_analytics_workspace_id ~name
      ~query __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
