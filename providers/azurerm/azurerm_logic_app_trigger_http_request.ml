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

type azurerm_logic_app_trigger_http_request = {
  id : string prop option; [@option]
  logic_app_id : string prop;
  method_ : string prop option; [@option] [@key "method"]
  name : string prop;
  relative_path : string prop option; [@option]
  schema : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logic_app_trigger_http_request) -> ()

let yojson_of_azurerm_logic_app_trigger_http_request =
  (function
   | {
       id = v_id;
       logic_app_id = v_logic_app_id;
       method_ = v_method_;
       name = v_name;
       relative_path = v_relative_path;
       schema = v_schema;
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
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       let bnds =
         match v_relative_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "relative_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
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
       `Assoc bnds
    : azurerm_logic_app_trigger_http_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_trigger_http_request

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_trigger_http_request ?id ?method_
    ?relative_path ?timeouts ~logic_app_id ~name ~schema () :
    azurerm_logic_app_trigger_http_request =
  {
    id;
    logic_app_id;
    method_;
    name;
    relative_path;
    schema;
    timeouts;
  }

type t = {
  tf_name : string;
  callback_url : string prop;
  id : string prop;
  logic_app_id : string prop;
  method_ : string prop;
  name : string prop;
  relative_path : string prop;
  schema : string prop;
}

let make ?id ?method_ ?relative_path ?timeouts ~logic_app_id ~name
    ~schema __id =
  let __type = "azurerm_logic_app_trigger_http_request" in
  let __attrs =
    ({
       tf_name = __id;
       callback_url = Prop.computed __type __id "callback_url";
       id = Prop.computed __type __id "id";
       logic_app_id = Prop.computed __type __id "logic_app_id";
       method_ = Prop.computed __type __id "method";
       name = Prop.computed __type __id "name";
       relative_path = Prop.computed __type __id "relative_path";
       schema = Prop.computed __type __id "schema";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_trigger_http_request
        (azurerm_logic_app_trigger_http_request ?id ?method_
           ?relative_path ?timeouts ~logic_app_id ~name ~schema ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?method_ ?relative_path ?timeouts
    ~logic_app_id ~name ~schema __id =
  let (r : _ Tf_core.resource) =
    make ?id ?method_ ?relative_path ?timeouts ~logic_app_id ~name
      ~schema __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
