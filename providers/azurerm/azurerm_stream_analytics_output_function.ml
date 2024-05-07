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

type azurerm_stream_analytics_output_function = {
  api_key : string prop;
  batch_max_count : float prop option; [@option]
  batch_max_in_bytes : float prop option; [@option]
  function_app : string prop;
  function_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_job_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_output_function) -> ()

let yojson_of_azurerm_stream_analytics_output_function =
  (function
   | {
       api_key = v_api_key;
       batch_max_count = v_batch_max_count;
       batch_max_in_bytes = v_batch_max_in_bytes;
       function_app = v_function_app;
       function_name = v_function_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       stream_analytics_job_name = v_stream_analytics_job_name;
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
           yojson_of_prop yojson_of_string
             v_stream_analytics_job_name
         in
         ("stream_analytics_job_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_app in
         ("function_app", arg) :: bnds
       in
       let bnds =
         match v_batch_max_in_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_max_in_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_max_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_max_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_output_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_output_function

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_function ?batch_max_count
    ?batch_max_in_bytes ?id ?timeouts ~api_key ~function_app
    ~function_name ~name ~resource_group_name
    ~stream_analytics_job_name () :
    azurerm_stream_analytics_output_function =
  {
    api_key;
    batch_max_count;
    batch_max_in_bytes;
    function_app;
    function_name;
    id;
    name;
    resource_group_name;
    stream_analytics_job_name;
    timeouts;
  }

type t = {
  tf_name : string;
  api_key : string prop;
  batch_max_count : float prop;
  batch_max_in_bytes : float prop;
  function_app : string prop;
  function_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_job_name : string prop;
}

let make ?batch_max_count ?batch_max_in_bytes ?id ?timeouts ~api_key
    ~function_app ~function_name ~name ~resource_group_name
    ~stream_analytics_job_name __id =
  let __type = "azurerm_stream_analytics_output_function" in
  let __attrs =
    ({
       tf_name = __id;
       api_key = Prop.computed __type __id "api_key";
       batch_max_count = Prop.computed __type __id "batch_max_count";
       batch_max_in_bytes =
         Prop.computed __type __id "batch_max_in_bytes";
       function_app = Prop.computed __type __id "function_app";
       function_name = Prop.computed __type __id "function_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_function
        (azurerm_stream_analytics_output_function ?batch_max_count
           ?batch_max_in_bytes ?id ?timeouts ~api_key ~function_app
           ~function_name ~name ~resource_group_name
           ~stream_analytics_job_name ());
    attrs = __attrs;
  }

let register ?tf_module ?batch_max_count ?batch_max_in_bytes ?id
    ?timeouts ~api_key ~function_app ~function_name ~name
    ~resource_group_name ~stream_analytics_job_name __id =
  let (r : _ Tf_core.resource) =
    make ?batch_max_count ?batch_max_in_bytes ?id ?timeouts ~api_key
      ~function_app ~function_name ~name ~resource_group_name
      ~stream_analytics_job_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
