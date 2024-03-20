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

type azurerm_stream_analytics_job_schedule = {
  id : string prop option; [@option]
  start_mode : string prop;
  start_time : string prop option; [@option]
  stream_analytics_job_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_job_schedule) -> ()

let yojson_of_azurerm_stream_analytics_job_schedule =
  (function
   | {
       id = v_id;
       start_mode = v_start_mode;
       start_time = v_start_time;
       stream_analytics_job_id = v_stream_analytics_job_id;
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
           yojson_of_prop yojson_of_string v_stream_analytics_job_id
         in
         ("stream_analytics_job_id", arg) :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_mode in
         ("start_mode", arg) :: bnds
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
    : azurerm_stream_analytics_job_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_job_schedule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_job_schedule ?id ?start_time ?timeouts
    ~start_mode ~stream_analytics_job_id () :
    azurerm_stream_analytics_job_schedule =
  { id; start_mode; start_time; stream_analytics_job_id; timeouts }

type t = {
  id : string prop;
  last_output_time : string prop;
  start_mode : string prop;
  start_time : string prop;
  stream_analytics_job_id : string prop;
}

let make ?id ?start_time ?timeouts ~start_mode
    ~stream_analytics_job_id __id =
  let __type = "azurerm_stream_analytics_job_schedule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       last_output_time =
         Prop.computed __type __id "last_output_time";
       start_mode = Prop.computed __type __id "start_mode";
       start_time = Prop.computed __type __id "start_time";
       stream_analytics_job_id =
         Prop.computed __type __id "stream_analytics_job_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_job_schedule
        (azurerm_stream_analytics_job_schedule ?id ?start_time
           ?timeouts ~start_mode ~stream_analytics_job_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?start_time ?timeouts ~start_mode
    ~stream_analytics_job_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?start_time ?timeouts ~start_mode
      ~stream_analytics_job_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
