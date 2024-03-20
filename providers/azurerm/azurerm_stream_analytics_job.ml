(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type job_storage_account = {
  account_key : string prop;
  account_name : string prop;
  authentication_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : job_storage_account) -> ()

let yojson_of_job_storage_account =
  (function
   | {
       account_key = v_account_key;
       account_name = v_account_name;
       authentication_mode = v_authentication_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_authentication_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_key in
         ("account_key", arg) :: bnds
       in
       `Assoc bnds
    : job_storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_job_storage_account

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

type azurerm_stream_analytics_job = {
  compatibility_level : string prop option; [@option]
  content_storage_policy : string prop option; [@option]
  data_locale : string prop option; [@option]
  events_late_arrival_max_delay_in_seconds : float prop option;
      [@option]
  events_out_of_order_max_delay_in_seconds : float prop option;
      [@option]
  events_out_of_order_policy : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  output_error_policy : string prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop option; [@option]
  stream_analytics_cluster_id : string prop option; [@option]
  streaming_units : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  transformation_query : string prop;
  type_ : string prop option; [@option] [@key "type"]
  identity : identity list;
  job_storage_account : job_storage_account list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_job) -> ()

let yojson_of_azurerm_stream_analytics_job =
  (function
   | {
       compatibility_level = v_compatibility_level;
       content_storage_policy = v_content_storage_policy;
       data_locale = v_data_locale;
       events_late_arrival_max_delay_in_seconds =
         v_events_late_arrival_max_delay_in_seconds;
       events_out_of_order_max_delay_in_seconds =
         v_events_out_of_order_max_delay_in_seconds;
       events_out_of_order_policy = v_events_out_of_order_policy;
       id = v_id;
       location = v_location;
       name = v_name;
       output_error_policy = v_output_error_policy;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       stream_analytics_cluster_id = v_stream_analytics_cluster_id;
       streaming_units = v_streaming_units;
       tags = v_tags;
       transformation_query = v_transformation_query;
       type_ = v_type_;
       identity = v_identity;
       job_storage_account = v_job_storage_account;
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
           yojson_of_list yojson_of_job_storage_account
             v_job_storage_account
         in
         ("job_storage_account", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transformation_query
         in
         ("transformation_query", arg) :: bnds
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
         match v_streaming_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "streaming_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stream_analytics_cluster_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_analytics_cluster_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_output_error_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_error_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_events_out_of_order_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "events_out_of_order_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_events_out_of_order_max_delay_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "events_out_of_order_max_delay_in_seconds", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_events_late_arrival_max_delay_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "events_late_arrival_max_delay_in_seconds", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_data_locale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_locale", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_storage_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_storage_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compatibility_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compatibility_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_job ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_job

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let job_storage_account ?authentication_mode ~account_key
    ~account_name () : job_storage_account =
  { account_key; account_name; authentication_mode }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_job ?compatibility_level
    ?content_storage_policy ?data_locale
    ?events_late_arrival_max_delay_in_seconds
    ?events_out_of_order_max_delay_in_seconds
    ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
    ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
    ?timeouts ~location ~name ~resource_group_name
    ~transformation_query ~identity ~job_storage_account () :
    azurerm_stream_analytics_job =
  {
    compatibility_level;
    content_storage_policy;
    data_locale;
    events_late_arrival_max_delay_in_seconds;
    events_out_of_order_max_delay_in_seconds;
    events_out_of_order_policy;
    id;
    location;
    name;
    output_error_policy;
    resource_group_name;
    sku_name;
    stream_analytics_cluster_id;
    streaming_units;
    tags;
    transformation_query;
    type_;
    identity;
    job_storage_account;
    timeouts;
  }

type t = {
  compatibility_level : string prop;
  content_storage_policy : string prop;
  data_locale : string prop;
  events_late_arrival_max_delay_in_seconds : float prop;
  events_out_of_order_max_delay_in_seconds : float prop;
  events_out_of_order_policy : string prop;
  id : string prop;
  job_id : string prop;
  location : string prop;
  name : string prop;
  output_error_policy : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  stream_analytics_cluster_id : string prop;
  streaming_units : float prop;
  tags : (string * string) list prop;
  transformation_query : string prop;
  type_ : string prop;
}

let make ?compatibility_level ?content_storage_policy ?data_locale
    ?events_late_arrival_max_delay_in_seconds
    ?events_out_of_order_max_delay_in_seconds
    ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
    ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
    ?timeouts ~location ~name ~resource_group_name
    ~transformation_query ~identity ~job_storage_account __id =
  let __type = "azurerm_stream_analytics_job" in
  let __attrs =
    ({
       compatibility_level =
         Prop.computed __type __id "compatibility_level";
       content_storage_policy =
         Prop.computed __type __id "content_storage_policy";
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
       job_id = Prop.computed __type __id "job_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       output_error_policy =
         Prop.computed __type __id "output_error_policy";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       stream_analytics_cluster_id =
         Prop.computed __type __id "stream_analytics_cluster_id";
       streaming_units = Prop.computed __type __id "streaming_units";
       tags = Prop.computed __type __id "tags";
       transformation_query =
         Prop.computed __type __id "transformation_query";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_job
        (azurerm_stream_analytics_job ?compatibility_level
           ?content_storage_policy ?data_locale
           ?events_late_arrival_max_delay_in_seconds
           ?events_out_of_order_max_delay_in_seconds
           ?events_out_of_order_policy ?id ?output_error_policy
           ?sku_name ?stream_analytics_cluster_id ?streaming_units
           ?tags ?type_ ?timeouts ~location ~name
           ~resource_group_name ~transformation_query ~identity
           ~job_storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?compatibility_level ?content_storage_policy
    ?data_locale ?events_late_arrival_max_delay_in_seconds
    ?events_out_of_order_max_delay_in_seconds
    ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
    ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
    ?timeouts ~location ~name ~resource_group_name
    ~transformation_query ~identity ~job_storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?compatibility_level ?content_storage_policy ?data_locale
      ?events_late_arrival_max_delay_in_seconds
      ?events_out_of_order_max_delay_in_seconds
      ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
      ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
      ?timeouts ~location ~name ~resource_group_name
      ~transformation_query ~identity ~job_storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
