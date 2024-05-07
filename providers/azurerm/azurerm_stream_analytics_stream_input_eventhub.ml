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

type azurerm_stream_analytics_stream_input_eventhub = {
  authentication_mode : string prop option; [@option]
  eventhub_consumer_group_name : string prop option; [@option]
  eventhub_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  partition_key : string prop option; [@option]
  resource_group_name : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop option; [@option]
  shared_access_policy_name : string prop option; [@option]
  stream_analytics_job_name : string prop;
  serialization : serialization list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_stream_analytics_stream_input_eventhub) -> ()

let yojson_of_azurerm_stream_analytics_stream_input_eventhub =
  (function
   | {
       authentication_mode = v_authentication_mode;
       eventhub_consumer_group_name = v_eventhub_consumer_group_name;
       eventhub_name = v_eventhub_name;
       id = v_id;
       name = v_name;
       partition_key = v_partition_key;
       resource_group_name = v_resource_group_name;
       servicebus_namespace = v_servicebus_namespace;
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
         let arg =
           yojson_of_list yojson_of_serialization v_serialization
         in
         ("serialization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_stream_analytics_job_name
         in
         ("stream_analytics_job_name", arg) :: bnds
       in
       let bnds =
         match v_shared_access_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_access_policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_access_policy_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_access_policy_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_servicebus_namespace
         in
         ("servicebus_namespace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_partition_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_eventhub_name in
         ("eventhub_name", arg) :: bnds
       in
       let bnds =
         match v_eventhub_consumer_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventhub_consumer_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_stream_input_eventhub ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_stream_input_eventhub

[@@@deriving.end]

let serialization ?encoding ?field_delimiter ~type_ () :
    serialization =
  { encoding; field_delimiter; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_stream_input_eventhub
    ?authentication_mode ?eventhub_consumer_group_name ?id
    ?partition_key ?shared_access_policy_key
    ?shared_access_policy_name ?timeouts ~eventhub_name ~name
    ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~serialization () :
    azurerm_stream_analytics_stream_input_eventhub =
  {
    authentication_mode;
    eventhub_consumer_group_name;
    eventhub_name;
    id;
    name;
    partition_key;
    resource_group_name;
    servicebus_namespace;
    shared_access_policy_key;
    shared_access_policy_name;
    stream_analytics_job_name;
    serialization;
    timeouts;
  }

type t = {
  tf_name : string;
  authentication_mode : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  resource_group_name : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
}

let make ?authentication_mode ?eventhub_consumer_group_name ?id
    ?partition_key ?shared_access_policy_key
    ?shared_access_policy_name ?timeouts ~eventhub_name ~name
    ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~serialization __id =
  let __type = "azurerm_stream_analytics_stream_input_eventhub" in
  let __attrs =
    ({
       tf_name = __id;
       authentication_mode =
         Prop.computed __type __id "authentication_mode";
       eventhub_consumer_group_name =
         Prop.computed __type __id "eventhub_consumer_group_name";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_key = Prop.computed __type __id "partition_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       servicebus_namespace =
         Prop.computed __type __id "servicebus_namespace";
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
      yojson_of_azurerm_stream_analytics_stream_input_eventhub
        (azurerm_stream_analytics_stream_input_eventhub
           ?authentication_mode ?eventhub_consumer_group_name ?id
           ?partition_key ?shared_access_policy_key
           ?shared_access_policy_name ?timeouts ~eventhub_name ~name
           ~resource_group_name ~servicebus_namespace
           ~stream_analytics_job_name ~serialization ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_mode
    ?eventhub_consumer_group_name ?id ?partition_key
    ?shared_access_policy_key ?shared_access_policy_name ?timeouts
    ~eventhub_name ~name ~resource_group_name ~servicebus_namespace
    ~stream_analytics_job_name ~serialization __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_mode ?eventhub_consumer_group_name ?id
      ?partition_key ?shared_access_policy_key
      ?shared_access_policy_name ?timeouts ~eventhub_name ~name
      ~resource_group_name ~servicebus_namespace
      ~stream_analytics_job_name ~serialization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
