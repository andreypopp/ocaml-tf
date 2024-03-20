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

type azurerm_stream_analytics_function_javascript_udf = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  script : string prop;
  stream_analytics_job_name : string prop;
  input : input list;
  output : output list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_stream_analytics_function_javascript_udf) -> ()

let yojson_of_azurerm_stream_analytics_function_javascript_udf =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       script = v_script;
       stream_analytics_job_name = v_stream_analytics_job_name;
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
           yojson_of_prop yojson_of_string
             v_stream_analytics_job_name
         in
         ("stream_analytics_job_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_script in
         ("script", arg) :: bnds
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
       `Assoc bnds
    : azurerm_stream_analytics_function_javascript_udf ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_function_javascript_udf

[@@@deriving.end]

let input ?configuration_parameter ~type_ () : input =
  { configuration_parameter; type_ }

let output ~type_ () : output = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_function_javascript_udf ?id ?timeouts
    ~name ~resource_group_name ~script ~stream_analytics_job_name
    ~input ~output () :
    azurerm_stream_analytics_function_javascript_udf =
  {
    id;
    name;
    resource_group_name;
    script;
    stream_analytics_job_name;
    input;
    output;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  script : string prop;
  stream_analytics_job_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name ~script
    ~stream_analytics_job_name ~input ~output __id =
  let __type = "azurerm_stream_analytics_function_javascript_udf" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       script = Prop.computed __type __id "script";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_function_javascript_udf
        (azurerm_stream_analytics_function_javascript_udf ?id
           ?timeouts ~name ~resource_group_name ~script
           ~stream_analytics_job_name ~input ~output ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~script ~stream_analytics_job_name ~input ~output __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name ~script
      ~stream_analytics_job_name ~input ~output __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
