(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type serialization = {
  encoding : string prop option; [@option]
  field_delimiter : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serialization) -> ()

let yojson_of_serialization =
  (function
   | {
       encoding = v_encoding;
       field_delimiter = v_field_delimiter;
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
         match v_field_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serialization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serialization

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

type azurerm_stream_analytics_stream_input_iothub = {
  endpoint : string prop;
  eventhub_consumer_group_name : string prop;
  id : string prop option; [@option]
  iothub_namespace : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
  serialization : serialization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_stream_input_iothub) -> ()

let yojson_of_azurerm_stream_analytics_stream_input_iothub =
  (function
   | {
       endpoint = v_endpoint;
       eventhub_consumer_group_name = v_eventhub_consumer_group_name;
       id = v_id;
       iothub_namespace = v_iothub_namespace;
       name = v_name;
       resource_group_name = v_resource_group_name;
       shared_access_policy_key = v_shared_access_policy_key;
       shared_access_policy_name = v_shared_access_policy_name;
       stream_analytics_job_name = v_stream_analytics_job_name;
       serialization = v_serialization;
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
         if Stdlib.( = ) [] v_serialization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_serialization) v_serialization
           in
           let bnd = "serialization", arg in
           bnd :: bnds
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
           yojson_of_prop yojson_of_string
             v_shared_access_policy_name
         in
         ("shared_access_policy_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_shared_access_policy_key
         in
         ("shared_access_policy_key", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_iothub_namespace
         in
         ("iothub_namespace", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_eventhub_consumer_group_name
         in
         ("eventhub_consumer_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_stream_input_iothub ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_stream_input_iothub

[@@@deriving.end]

let serialization ?encoding ?field_delimiter ~type_ () :
    serialization =
  { encoding; field_delimiter; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_stream_input_iothub ?id ?timeouts
    ~endpoint ~eventhub_consumer_group_name ~iothub_namespace ~name
    ~resource_group_name ~shared_access_policy_key
    ~shared_access_policy_name ~stream_analytics_job_name
    ~serialization () : azurerm_stream_analytics_stream_input_iothub
    =
  {
    endpoint;
    eventhub_consumer_group_name;
    id;
    iothub_namespace;
    name;
    resource_group_name;
    shared_access_policy_key;
    shared_access_policy_name;
    stream_analytics_job_name;
    serialization;
    timeouts;
  }

type t = {
  tf_name : string;
  endpoint : string prop;
  eventhub_consumer_group_name : string prop;
  id : string prop;
  iothub_namespace : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
}

let make ?id ?timeouts ~endpoint ~eventhub_consumer_group_name
    ~iothub_namespace ~name ~resource_group_name
    ~shared_access_policy_key ~shared_access_policy_name
    ~stream_analytics_job_name ~serialization __id =
  let __type = "azurerm_stream_analytics_stream_input_iothub" in
  let __attrs =
    ({
       tf_name = __id;
       endpoint = Prop.computed __type __id "endpoint";
       eventhub_consumer_group_name =
         Prop.computed __type __id "eventhub_consumer_group_name";
       id = Prop.computed __type __id "id";
       iothub_namespace =
         Prop.computed __type __id "iothub_namespace";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shared_access_policy_key =
         Prop.computed __type __id "shared_access_policy_key";
       shared_access_policy_name =
         Prop.computed __type __id "shared_access_policy_name";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_stream_input_iothub
        (azurerm_stream_analytics_stream_input_iothub ?id ?timeouts
           ~endpoint ~eventhub_consumer_group_name ~iothub_namespace
           ~name ~resource_group_name ~shared_access_policy_key
           ~shared_access_policy_name ~stream_analytics_job_name
           ~serialization ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~endpoint
    ~eventhub_consumer_group_name ~iothub_namespace ~name
    ~resource_group_name ~shared_access_policy_key
    ~shared_access_policy_name ~stream_analytics_job_name
    ~serialization __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~endpoint ~eventhub_consumer_group_name
      ~iothub_namespace ~name ~resource_group_name
      ~shared_access_policy_key ~shared_access_policy_name
      ~stream_analytics_job_name ~serialization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
