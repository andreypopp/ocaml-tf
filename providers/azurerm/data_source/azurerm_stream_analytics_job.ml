(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
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
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         if [] = v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type azurerm_stream_analytics_job = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_job) -> ()

let yojson_of_azurerm_stream_analytics_job =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
    : azurerm_stream_analytics_job ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_job

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_stream_analytics_job ?id ?timeouts ~name
    ~resource_group_name () : azurerm_stream_analytics_job =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  compatibility_level : string prop;
  data_locale : string prop;
  events_late_arrival_max_delay_in_seconds : float prop;
  events_out_of_order_max_delay_in_seconds : float prop;
  events_out_of_order_policy : string prop;
  id : string prop;
  identity : identity list prop;
  job_id : string prop;
  last_output_time : string prop;
  location : string prop;
  name : string prop;
  output_error_policy : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  start_mode : string prop;
  start_time : string prop;
  streaming_units : float prop;
  transformation_query : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_stream_analytics_job" in
  let __attrs =
    ({
       tf_name = __id;
       compatibility_level =
         Prop.computed __type __id "compatibility_level";
       data_locale = Prop.computed __type __id "data_locale";
       events_late_arrival_max_delay_in_seconds =
         Prop.computed __type __id
           "events_late_arrival_max_delay_in_seconds";
       events_out_of_order_max_delay_in_seconds =
         Prop.computed __type __id
           "events_out_of_order_max_delay_in_seconds";
       events_out_of_order_policy =
         Prop.computed __type __id "events_out_of_order_policy";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       job_id = Prop.computed __type __id "job_id";
       last_output_time =
         Prop.computed __type __id "last_output_time";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       output_error_policy =
         Prop.computed __type __id "output_error_policy";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       start_mode = Prop.computed __type __id "start_mode";
       start_time = Prop.computed __type __id "start_time";
       streaming_units = Prop.computed __type __id "streaming_units";
       transformation_query =
         Prop.computed __type __id "transformation_query";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_job
        (azurerm_stream_analytics_job ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
