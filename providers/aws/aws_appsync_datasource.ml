(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dynamodb_config__delta_sync_config = {
  base_table_ttl : float prop option; [@option]
  delta_sync_table_name : string prop;
  delta_sync_table_ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dynamodb_config__delta_sync_config) -> ()

let yojson_of_dynamodb_config__delta_sync_config =
  (function
   | {
       base_table_ttl = v_base_table_ttl;
       delta_sync_table_name = v_delta_sync_table_name;
       delta_sync_table_ttl = v_delta_sync_table_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delta_sync_table_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "delta_sync_table_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delta_sync_table_name
         in
         ("delta_sync_table_name", arg) :: bnds
       in
       let bnds =
         match v_base_table_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "base_table_ttl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dynamodb_config__delta_sync_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dynamodb_config__delta_sync_config

[@@@deriving.end]

type dynamodb_config = {
  region : string prop option; [@option]
  table_name : string prop;
  use_caller_credentials : bool prop option; [@option]
  versioned : bool prop option; [@option]
  delta_sync_config : dynamodb_config__delta_sync_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dynamodb_config) -> ()

let yojson_of_dynamodb_config =
  (function
   | {
       region = v_region;
       table_name = v_table_name;
       use_caller_credentials = v_use_caller_credentials;
       versioned = v_versioned;
       delta_sync_config = v_delta_sync_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_delta_sync_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_dynamodb_config__delta_sync_config)
               v_delta_sync_config
           in
           let bnd = "delta_sync_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_versioned with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "versioned", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_caller_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_caller_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dynamodb_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dynamodb_config

[@@@deriving.end]

type elasticsearch_config = {
  endpoint : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elasticsearch_config) -> ()

let yojson_of_elasticsearch_config =
  (function
   | { endpoint = v_endpoint; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : elasticsearch_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elasticsearch_config

[@@@deriving.end]

type event_bridge_config = { event_bus_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_bridge_config) -> ()

let yojson_of_event_bridge_config =
  (function
   | { event_bus_arn = v_event_bus_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_bus_arn in
         ("event_bus_arn", arg) :: bnds
       in
       `Assoc bnds
    : event_bridge_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_bridge_config

[@@@deriving.end]

type http_config__authorization_config__aws_iam_config = {
  signing_region : string prop option; [@option]
  signing_service_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : http_config__authorization_config__aws_iam_config) -> ()

let yojson_of_http_config__authorization_config__aws_iam_config =
  (function
   | {
       signing_region = v_signing_region;
       signing_service_name = v_signing_service_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_signing_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signing_service_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_signing_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signing_region", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_config__authorization_config__aws_iam_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_config__authorization_config__aws_iam_config

[@@@deriving.end]

type http_config__authorization_config = {
  authorization_type : string prop option; [@option]
  aws_iam_config :
    http_config__authorization_config__aws_iam_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_config__authorization_config) -> ()

let yojson_of_http_config__authorization_config =
  (function
   | {
       authorization_type = v_authorization_type;
       aws_iam_config = v_aws_iam_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_aws_iam_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_config__authorization_config__aws_iam_config)
               v_aws_iam_config
           in
           let bnd = "aws_iam_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_authorization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_config__authorization_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_config__authorization_config

[@@@deriving.end]

type http_config = {
  endpoint : string prop;
  authorization_config : http_config__authorization_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_config) -> ()

let yojson_of_http_config =
  (function
   | {
       endpoint = v_endpoint;
       authorization_config = v_authorization_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_authorization_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_config__authorization_config)
               v_authorization_config
           in
           let bnd = "authorization_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : http_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_config

[@@@deriving.end]

type lambda_config = { function_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_config) -> ()

let yojson_of_lambda_config =
  (function
   | { function_arn = v_function_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_arn in
         ("function_arn", arg) :: bnds
       in
       `Assoc bnds
    : lambda_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_config

[@@@deriving.end]

type opensearchservice_config = {
  endpoint : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : opensearchservice_config) -> ()

let yojson_of_opensearchservice_config =
  (function
   | { endpoint = v_endpoint; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : opensearchservice_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_opensearchservice_config

[@@@deriving.end]

type relational_database_config__http_endpoint_config = {
  aws_secret_store_arn : string prop;
  database_name : string prop option; [@option]
  db_cluster_identifier : string prop;
  region : string prop option; [@option]
  schema : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : relational_database_config__http_endpoint_config) -> ()

let yojson_of_relational_database_config__http_endpoint_config =
  (function
   | {
       aws_secret_store_arn = v_aws_secret_store_arn;
       database_name = v_database_name;
       db_cluster_identifier = v_db_cluster_identifier;
       region = v_region;
       schema = v_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_db_cluster_identifier
         in
         ("db_cluster_identifier", arg) :: bnds
       in
       let bnds =
         match v_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_aws_secret_store_arn
         in
         ("aws_secret_store_arn", arg) :: bnds
       in
       `Assoc bnds
    : relational_database_config__http_endpoint_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_relational_database_config__http_endpoint_config

[@@@deriving.end]

type relational_database_config = {
  source_type : string prop option; [@option]
  http_endpoint_config :
    relational_database_config__http_endpoint_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : relational_database_config) -> ()

let yojson_of_relational_database_config =
  (function
   | {
       source_type = v_source_type;
       http_endpoint_config = v_http_endpoint_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_http_endpoint_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_relational_database_config__http_endpoint_config)
               v_http_endpoint_config
           in
           let bnd = "http_endpoint_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_source_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : relational_database_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_relational_database_config

[@@@deriving.end]

type aws_appsync_datasource = {
  api_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  service_role_arn : string prop option; [@option]
  type_ : string prop; [@key "type"]
  dynamodb_config : dynamodb_config list;
      [@default []] [@yojson_drop_default ( = )]
  elasticsearch_config : elasticsearch_config list;
      [@default []] [@yojson_drop_default ( = )]
  event_bridge_config : event_bridge_config list;
      [@default []] [@yojson_drop_default ( = )]
  http_config : http_config list;
      [@default []] [@yojson_drop_default ( = )]
  lambda_config : lambda_config list;
      [@default []] [@yojson_drop_default ( = )]
  opensearchservice_config : opensearchservice_config list;
      [@default []] [@yojson_drop_default ( = )]
  relational_database_config : relational_database_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_datasource) -> ()

let yojson_of_aws_appsync_datasource =
  (function
   | {
       api_id = v_api_id;
       description = v_description;
       id = v_id;
       name = v_name;
       service_role_arn = v_service_role_arn;
       type_ = v_type_;
       dynamodb_config = v_dynamodb_config;
       elasticsearch_config = v_elasticsearch_config;
       event_bridge_config = v_event_bridge_config;
       http_config = v_http_config;
       lambda_config = v_lambda_config;
       opensearchservice_config = v_opensearchservice_config;
       relational_database_config = v_relational_database_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_relational_database_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_relational_database_config)
               v_relational_database_config
           in
           let bnd = "relational_database_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_opensearchservice_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_opensearchservice_config)
               v_opensearchservice_config
           in
           let bnd = "opensearchservice_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lambda_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lambda_config) v_lambda_config
           in
           let bnd = "lambda_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_http_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http_config) v_http_config
           in
           let bnd = "http_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_event_bridge_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_bridge_config)
               v_event_bridge_config
           in
           let bnd = "event_bridge_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_elasticsearch_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_elasticsearch_config)
               v_elasticsearch_config
           in
           let bnd = "elasticsearch_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dynamodb_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dynamodb_config)
               v_dynamodb_config
           in
           let bnd = "dynamodb_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_service_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_role_arn", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_appsync_datasource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_datasource

[@@@deriving.end]

let dynamodb_config__delta_sync_config ?base_table_ttl
    ?delta_sync_table_ttl ~delta_sync_table_name () :
    dynamodb_config__delta_sync_config =
  { base_table_ttl; delta_sync_table_name; delta_sync_table_ttl }

let dynamodb_config ?region ?use_caller_credentials ?versioned
    ?(delta_sync_config = []) ~table_name () : dynamodb_config =
  {
    region;
    table_name;
    use_caller_credentials;
    versioned;
    delta_sync_config;
  }

let elasticsearch_config ?region ~endpoint () : elasticsearch_config
    =
  { endpoint; region }

let event_bridge_config ~event_bus_arn () : event_bridge_config =
  { event_bus_arn }

let http_config__authorization_config__aws_iam_config ?signing_region
    ?signing_service_name () :
    http_config__authorization_config__aws_iam_config =
  { signing_region; signing_service_name }

let http_config__authorization_config ?authorization_type
    ?(aws_iam_config = []) () : http_config__authorization_config =
  { authorization_type; aws_iam_config }

let http_config ?(authorization_config = []) ~endpoint () :
    http_config =
  { endpoint; authorization_config }

let lambda_config ~function_arn () : lambda_config = { function_arn }

let opensearchservice_config ?region ~endpoint () :
    opensearchservice_config =
  { endpoint; region }

let relational_database_config__http_endpoint_config ?database_name
    ?region ?schema ~aws_secret_store_arn ~db_cluster_identifier () :
    relational_database_config__http_endpoint_config =
  {
    aws_secret_store_arn;
    database_name;
    db_cluster_identifier;
    region;
    schema;
  }

let relational_database_config ?source_type
    ?(http_endpoint_config = []) () : relational_database_config =
  { source_type; http_endpoint_config }

let aws_appsync_datasource ?description ?id ?service_role_arn
    ?(dynamodb_config = []) ?(elasticsearch_config = [])
    ?(event_bridge_config = []) ?(http_config = [])
    ?(lambda_config = []) ?(opensearchservice_config = [])
    ?(relational_database_config = []) ~api_id ~name ~type_ () :
    aws_appsync_datasource =
  {
    api_id;
    description;
    id;
    name;
    service_role_arn;
    type_;
    dynamodb_config;
    elasticsearch_config;
    event_bridge_config;
    http_config;
    lambda_config;
    opensearchservice_config;
    relational_database_config;
  }

type t = {
  tf_name : string;
  api_id : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  service_role_arn : string prop;
  type_ : string prop;
}

let make ?description ?id ?service_role_arn ?(dynamodb_config = [])
    ?(elasticsearch_config = []) ?(event_bridge_config = [])
    ?(http_config = []) ?(lambda_config = [])
    ?(opensearchservice_config = [])
    ?(relational_database_config = []) ~api_id ~name ~type_ __id =
  let __type = "aws_appsync_datasource" in
  let __attrs =
    ({
       tf_name = __id;
       api_id = Prop.computed __type __id "api_id";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       service_role_arn =
         Prop.computed __type __id "service_role_arn";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_datasource
        (aws_appsync_datasource ?description ?id ?service_role_arn
           ~dynamodb_config ~elasticsearch_config
           ~event_bridge_config ~http_config ~lambda_config
           ~opensearchservice_config ~relational_database_config
           ~api_id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?service_role_arn
    ?(dynamodb_config = []) ?(elasticsearch_config = [])
    ?(event_bridge_config = []) ?(http_config = [])
    ?(lambda_config = []) ?(opensearchservice_config = [])
    ?(relational_database_config = []) ~api_id ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?service_role_arn ~dynamodb_config
      ~elasticsearch_config ~event_bridge_config ~http_config
      ~lambda_config ~opensearchservice_config
      ~relational_database_config ~api_id ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
