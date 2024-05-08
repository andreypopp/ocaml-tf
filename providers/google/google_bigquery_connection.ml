(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws__access_role = { iam_role_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws__access_role) -> ()

let yojson_of_aws__access_role =
  (function
   | { iam_role_id = v_iam_role_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iam_role_id in
         ("iam_role_id", arg) :: bnds
       in
       `Assoc bnds
    : aws__access_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws__access_role

[@@@deriving.end]

type aws = {
  access_role : aws__access_role list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws) -> ()

let yojson_of_aws =
  (function
   | { access_role = v_access_role } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_access_role then bnds
         else
           let arg =
             (yojson_of_list yojson_of_aws__access_role)
               v_access_role
           in
           let bnd = "access_role", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws

[@@@deriving.end]

type azure = {
  customer_tenant_id : string prop;
  federated_application_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure) -> ()

let yojson_of_azure =
  (function
   | {
       customer_tenant_id = v_customer_tenant_id;
       federated_application_client_id =
         v_federated_application_client_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_federated_application_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "federated_application_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_customer_tenant_id
         in
         ("customer_tenant_id", arg) :: bnds
       in
       `Assoc bnds
    : azure -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure

[@@@deriving.end]

type cloud_resource = unit [@@deriving_inline yojson_of]

let _ = fun (_ : cloud_resource) -> ()

let yojson_of_cloud_resource =
  (yojson_of_unit
    : cloud_resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_resource

[@@@deriving.end]

type cloud_spanner = {
  database : string prop;
  database_role : string prop option; [@option]
  max_parallelism : float prop option; [@option]
  use_data_boost : bool prop option; [@option]
  use_parallelism : bool prop option; [@option]
  use_serverless_analytics : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_spanner) -> ()

let yojson_of_cloud_spanner =
  (function
   | {
       database = v_database;
       database_role = v_database_role;
       max_parallelism = v_max_parallelism;
       use_data_boost = v_use_data_boost;
       use_parallelism = v_use_parallelism;
       use_serverless_analytics = v_use_serverless_analytics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_serverless_analytics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_serverless_analytics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_parallelism", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_data_boost with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_data_boost", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_parallelism", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_role", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : cloud_spanner -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_spanner

[@@@deriving.end]

type cloud_sql__credential = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_sql__credential) -> ()

let yojson_of_cloud_sql__credential =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : cloud_sql__credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_sql__credential

[@@@deriving.end]

type cloud_sql = {
  database : string prop;
  instance_id : string prop;
  type_ : string prop; [@key "type"]
  credential : cloud_sql__credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_sql) -> ()

let yojson_of_cloud_sql =
  (function
   | {
       database = v_database;
       instance_id = v_instance_id;
       type_ = v_type_;
       credential = v_credential;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloud_sql__credential)
               v_credential
           in
           let bnd = "credential", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : cloud_sql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_sql

[@@@deriving.end]

type spark__metastore_service_config = {
  metastore_service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark__metastore_service_config) -> ()

let yojson_of_spark__metastore_service_config =
  (function
   | { metastore_service = v_metastore_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metastore_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metastore_service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spark__metastore_service_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark__metastore_service_config

[@@@deriving.end]

type spark__spark_history_server_config = {
  dataproc_cluster : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark__spark_history_server_config) -> ()

let yojson_of_spark__spark_history_server_config =
  (function
   | { dataproc_cluster = v_dataproc_cluster } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_dataproc_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataproc_cluster", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spark__spark_history_server_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark__spark_history_server_config

[@@@deriving.end]

type spark = {
  metastore_service_config : spark__metastore_service_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spark_history_server_config :
    spark__spark_history_server_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark) -> ()

let yojson_of_spark =
  (function
   | {
       metastore_service_config = v_metastore_service_config;
       spark_history_server_config = v_spark_history_server_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spark_history_server_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spark__spark_history_server_config)
               v_spark_history_server_config
           in
           let bnd = "spark_history_server_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metastore_service_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spark__metastore_service_config)
               v_metastore_service_config
           in
           let bnd = "metastore_service_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spark -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_bigquery_connection = {
  connection_id : string prop option; [@option]
  description : string prop option; [@option]
  friendly_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  project : string prop option; [@option]
  aws : aws list; [@default []] [@yojson_drop_default Stdlib.( = )]
  azure : azure list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloud_resource : cloud_resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloud_spanner : cloud_spanner list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloud_sql : cloud_sql list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spark : spark list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_connection) -> ()

let yojson_of_google_bigquery_connection =
  (function
   | {
       connection_id = v_connection_id;
       description = v_description;
       friendly_name = v_friendly_name;
       id = v_id;
       location = v_location;
       project = v_project;
       aws = v_aws;
       azure = v_azure;
       cloud_resource = v_cloud_resource;
       cloud_spanner = v_cloud_spanner;
       cloud_sql = v_cloud_sql;
       spark = v_spark;
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
         if Stdlib.( = ) [] v_spark then bnds
         else
           let arg = (yojson_of_list yojson_of_spark) v_spark in
           let bnd = "spark", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_sql then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloud_sql) v_cloud_sql
           in
           let bnd = "cloud_sql", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_spanner then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloud_spanner) v_cloud_spanner
           in
           let bnd = "cloud_spanner", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_resource then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloud_resource)
               v_cloud_resource
           in
           let bnd = "cloud_resource", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure then bnds
         else
           let arg = (yojson_of_list yojson_of_azure) v_azure in
           let bnd = "azure", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aws then bnds
         else
           let arg = (yojson_of_list yojson_of_aws) v_aws in
           let bnd = "aws", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
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
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
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
         match v_connection_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigquery_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_connection

[@@@deriving.end]

let aws__access_role ~iam_role_id () : aws__access_role =
  { iam_role_id }

let aws ~access_role () : aws = { access_role }

let azure ?federated_application_client_id ~customer_tenant_id () :
    azure =
  { customer_tenant_id; federated_application_client_id }

let cloud_resource () = ()

let cloud_spanner ?database_role ?max_parallelism ?use_data_boost
    ?use_parallelism ?use_serverless_analytics ~database () :
    cloud_spanner =
  {
    database;
    database_role;
    max_parallelism;
    use_data_boost;
    use_parallelism;
    use_serverless_analytics;
  }

let cloud_sql__credential ~password ~username () :
    cloud_sql__credential =
  { password; username }

let cloud_sql ~database ~instance_id ~type_ ~credential () :
    cloud_sql =
  { database; instance_id; type_; credential }

let spark__metastore_service_config ?metastore_service () :
    spark__metastore_service_config =
  { metastore_service }

let spark__spark_history_server_config ?dataproc_cluster () :
    spark__spark_history_server_config =
  { dataproc_cluster }

let spark ?(metastore_service_config = [])
    ?(spark_history_server_config = []) () : spark =
  { metastore_service_config; spark_history_server_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_connection ?connection_id ?description
    ?friendly_name ?id ?location ?project ?(aws = []) ?(azure = [])
    ?(cloud_resource = []) ?(cloud_spanner = []) ?(cloud_sql = [])
    ?(spark = []) ?timeouts () : google_bigquery_connection =
  {
    connection_id;
    description;
    friendly_name;
    id;
    location;
    project;
    aws;
    azure;
    cloud_resource;
    cloud_spanner;
    cloud_sql;
    spark;
    timeouts;
  }

type t = {
  tf_name : string;
  connection_id : string prop;
  description : string prop;
  friendly_name : string prop;
  has_credential : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?connection_id ?description ?friendly_name ?id ?location
    ?project ?(aws = []) ?(azure = []) ?(cloud_resource = [])
    ?(cloud_spanner = []) ?(cloud_sql = []) ?(spark = []) ?timeouts
    __id =
  let __type = "google_bigquery_connection" in
  let __attrs =
    ({
       tf_name = __id;
       connection_id = Prop.computed __type __id "connection_id";
       description = Prop.computed __type __id "description";
       friendly_name = Prop.computed __type __id "friendly_name";
       has_credential = Prop.computed __type __id "has_credential";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_connection
        (google_bigquery_connection ?connection_id ?description
           ?friendly_name ?id ?location ?project ~aws ~azure
           ~cloud_resource ~cloud_spanner ~cloud_sql ~spark ?timeouts
           ());
    attrs = __attrs;
  }

let register ?tf_module ?connection_id ?description ?friendly_name
    ?id ?location ?project ?(aws = []) ?(azure = [])
    ?(cloud_resource = []) ?(cloud_spanner = []) ?(cloud_sql = [])
    ?(spark = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?connection_id ?description ?friendly_name ?id ?location
      ?project ~aws ~azure ~cloud_resource ~cloud_spanner ~cloud_sql
      ~spark ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
