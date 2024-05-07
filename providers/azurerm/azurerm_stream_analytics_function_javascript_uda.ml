(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input = {
  configuration_parameter : bool prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input) -> ()

let yojson_of_input =
  (function
   | {
       configuration_parameter = v_configuration_parameter;
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
         match v_configuration_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "configuration_parameter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input

[@@@deriving.end]

type output = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : output) -> ()

let yojson_of_output =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : output -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output

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

type azurerm_stream_analytics_function_javascript_uda = {
  id : string prop option; [@option]
  name : string prop;
  script : string prop;
  stream_analytics_job_id : string prop;
  input : input list;
  output : output list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_stream_analytics_function_javascript_uda) -> ()

let yojson_of_azurerm_stream_analytics_function_javascript_uda =
  (function
   | {
       id = v_id;
       name = v_name;
       script = v_script;
       stream_analytics_job_id = v_stream_analytics_job_id;
       input = v_input;
       output = v_output;
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
         let arg = yojson_of_list yojson_of_output v_output in
         ("output", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_input v_input in
         ("input", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_stream_analytics_job_id
         in
         ("stream_analytics_job_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_script in
         ("script", arg) :: bnds
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
       `Assoc bnds
    : azurerm_stream_analytics_function_javascript_uda ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_function_javascript_uda

[@@@deriving.end]

let input ?configuration_parameter ~type_ () : input =
  { configuration_parameter; type_ }

let output ~type_ () : output = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_function_javascript_uda ?id ?timeouts
    ~name ~script ~stream_analytics_job_id ~input ~output () :
    azurerm_stream_analytics_function_javascript_uda =
  {
    id;
    name;
    script;
    stream_analytics_job_id;
    input;
    output;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  script : string prop;
  stream_analytics_job_id : string prop;
}

let make ?id ?timeouts ~name ~script ~stream_analytics_job_id ~input
    ~output __id =
  let __type = "azurerm_stream_analytics_function_javascript_uda" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       script = Prop.computed __type __id "script";
       stream_analytics_job_id =
         Prop.computed __type __id "stream_analytics_job_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_function_javascript_uda
        (azurerm_stream_analytics_function_javascript_uda ?id
           ?timeouts ~name ~script ~stream_analytics_job_id ~input
           ~output ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~script
    ~stream_analytics_job_id ~input ~output __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~script ~stream_analytics_job_id ~input
      ~output __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
