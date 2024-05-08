(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type run_after = {
  action_name : string prop;
  action_result : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : run_after) -> ()

let yojson_of_run_after =
  (function
   | { action_name = v_action_name; action_result = v_action_result }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_result in
         ("action_result", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_name in
         ("action_name", arg) :: bnds
       in
       `Assoc bnds
    : run_after -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_run_after

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

type azurerm_logic_app_action_http = {
  body : string prop option; [@option]
  headers : (string * string prop) list option; [@option]
  id : string prop option; [@option]
  logic_app_id : string prop;
  method_ : string prop; [@key "method"]
  name : string prop;
  queries : (string * string prop) list option; [@option]
  uri : string prop;
  run_after : run_after list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logic_app_action_http) -> ()

let yojson_of_azurerm_logic_app_action_http =
  (function
   | {
       body = v_body;
       headers = v_headers;
       id = v_id;
       logic_app_id = v_logic_app_id;
       method_ = v_method_;
       name = v_name;
       queries = v_queries;
       uri = v_uri;
       run_after = v_run_after;
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
         if [] = v_run_after then bnds
         else
           let arg =
             (yojson_of_list yojson_of_run_after) v_run_after
           in
           let bnd = "run_after", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_queries with
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
             let bnd = "queries", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_method_ in
         ("method", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_logic_app_id in
         ("logic_app_id", arg) :: bnds
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
         match v_headers with
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
             let bnd = "headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_logic_app_action_http ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_action_http

[@@@deriving.end]

let run_after ~action_name ~action_result () : run_after =
  { action_name; action_result }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_action_http ?body ?headers ?id ?queries
    ?timeouts ~logic_app_id ~method_ ~name ~uri ~run_after () :
    azurerm_logic_app_action_http =
  {
    body;
    headers;
    id;
    logic_app_id;
    method_;
    name;
    queries;
    uri;
    run_after;
    timeouts;
  }

type t = {
  tf_name : string;
  body : string prop;
  headers : (string * string) list prop;
  id : string prop;
  logic_app_id : string prop;
  method_ : string prop;
  name : string prop;
  queries : (string * string) list prop;
  uri : string prop;
}

let make ?body ?headers ?id ?queries ?timeouts ~logic_app_id ~method_
    ~name ~uri ~run_after __id =
  let __type = "azurerm_logic_app_action_http" in
  let __attrs =
    ({
       tf_name = __id;
       body = Prop.computed __type __id "body";
       headers = Prop.computed __type __id "headers";
       id = Prop.computed __type __id "id";
       logic_app_id = Prop.computed __type __id "logic_app_id";
       method_ = Prop.computed __type __id "method";
       name = Prop.computed __type __id "name";
       queries = Prop.computed __type __id "queries";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_action_http
        (azurerm_logic_app_action_http ?body ?headers ?id ?queries
           ?timeouts ~logic_app_id ~method_ ~name ~uri ~run_after ());
    attrs = __attrs;
  }

let register ?tf_module ?body ?headers ?id ?queries ?timeouts
    ~logic_app_id ~method_ ~name ~uri ~run_after __id =
  let (r : _ Tf_core.resource) =
    make ?body ?headers ?id ?queries ?timeouts ~logic_app_id ~method_
      ~name ~uri ~run_after __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
