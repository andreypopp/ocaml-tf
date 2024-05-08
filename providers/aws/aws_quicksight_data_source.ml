(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type credentials__credential_pair = {
  password: string prop; 
  username: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type credentials = {
  copy_source_arn: string  prop option; [@option]
  credential_pair: credentials__credential_pair list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__amazon_elasticsearch = {
  domain: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__athena = {
  work_group: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__aurora = {
  database: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__aurora_postgresql = {
  database: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__aws_iot_analytics = {
  data_set_name: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__jira = {
  site_base_url: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__maria_db = {
  database: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__mysql = {
  database: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__oracle = {
  database: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__postgresql = {
  database: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__presto = {
  catalog: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__rds = {
  database: string prop; 
  instance_id: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__redshift = {
  cluster_id: string  prop option; [@option]
  database: string prop; 
  host: string  prop option; [@option]
  port: float  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__s3__manifest_file_location = {
  bucket: string prop; 
  key: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__s3 = {
  manifest_file_location: parameters__s3__manifest_file_location list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__service_now = {
  site_base_url: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__snowflake = {
  database: string prop; 
  host: string prop; 
  warehouse: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__spark = {
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__sql_server = {
  database: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__teradata = {
  database: string prop; 
  host: string prop; 
  port: float prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters__twitter = {
  max_rows: float prop; 
  query: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type parameters = {
  amazon_elasticsearch: parameters__amazon_elasticsearch list; [@default []] [@yojson_drop_default ( = )]
  athena: parameters__athena list; [@default []] [@yojson_drop_default ( = )]
  aurora: parameters__aurora list; [@default []] [@yojson_drop_default ( = )]
  aurora_postgresql: parameters__aurora_postgresql list; [@default []] [@yojson_drop_default ( = )]
  aws_iot_analytics: parameters__aws_iot_analytics list; [@default []] [@yojson_drop_default ( = )]
  jira: parameters__jira list; [@default []] [@yojson_drop_default ( = )]
  maria_db: parameters__maria_db list; [@default []] [@yojson_drop_default ( = )]
  mysql: parameters__mysql list; [@default []] [@yojson_drop_default ( = )]
  oracle: parameters__oracle list; [@default []] [@yojson_drop_default ( = )]
  postgresql: parameters__postgresql list; [@default []] [@yojson_drop_default ( = )]
  presto: parameters__presto list; [@default []] [@yojson_drop_default ( = )]
  rds: parameters__rds list; [@default []] [@yojson_drop_default ( = )]
  redshift: parameters__redshift list; [@default []] [@yojson_drop_default ( = )]
  s3: parameters__s3 list; [@default []] [@yojson_drop_default ( = )]
  service_now: parameters__service_now list; [@default []] [@yojson_drop_default ( = )]
  snowflake: parameters__snowflake list; [@default []] [@yojson_drop_default ( = )]
  spark: parameters__spark list; [@default []] [@yojson_drop_default ( = )]
  sql_server: parameters__sql_server list; [@default []] [@yojson_drop_default ( = )]
  teradata: parameters__teradata list; [@default []] [@yojson_drop_default ( = )]
  twitter: parameters__twitter list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type permission = {
  actions: string  prop list; [@default []] [@yojson_drop_default ( = )]
  principal: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type ssl_properties = {
  disable_ssl: bool prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type vpc_connection_properties = {
  vpc_connection_arn: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type aws_quicksight_data_source = {
  aws_account_id: string  prop option; [@option]
  data_source_id: string prop; 
  id: string  prop option; [@option]
  name: string prop; 
  tags: (string * string   prop) list option; [@option]
  tags_all: (string * string   prop) list option; [@option]
  type_: string prop; [@key "type"]
  credentials: credentials list; [@default []] [@yojson_drop_default ( = )]
  parameters: parameters list; [@default []] [@yojson_drop_default ( = )]
  permission: permission list; [@default []] [@yojson_drop_default ( = )]
  ssl_properties: ssl_properties list; [@default []] [@yojson_drop_default ( = )]
  vpc_connection_properties: vpc_connection_properties list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let credentials__credential_pair ~password ~username () =
  ({
    password;
    username;
  } : credentials__credential_pair);;

let credentials ?copy_source_arn ?(credential_pair=[]) () =
  ({
    copy_source_arn;
    credential_pair;
  } : credentials);;

let parameters__amazon_elasticsearch ~domain () =
  ({
    domain;
  } : parameters__amazon_elasticsearch);;

let parameters__athena ?work_group () =
  ({
    work_group;
  } : parameters__athena);;

let parameters__aurora ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__aurora);;

let parameters__aurora_postgresql ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__aurora_postgresql);;

let parameters__aws_iot_analytics ~data_set_name () =
  ({
    data_set_name;
  } : parameters__aws_iot_analytics);;

let parameters__jira ~site_base_url () =
  ({
    site_base_url;
  } : parameters__jira);;

let parameters__maria_db ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__maria_db);;

let parameters__mysql ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__mysql);;

let parameters__oracle ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__oracle);;

let parameters__postgresql ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__postgresql);;

let parameters__presto ~catalog ~host ~port () =
  ({
    catalog;
    host;
    port;
  } : parameters__presto);;

let parameters__rds ~database ~instance_id () =
  ({
    database;
    instance_id;
  } : parameters__rds);;

let parameters__redshift ?cluster_id ?host ?port ~database () =
  ({
    cluster_id;
    database;
    host;
    port;
  } : parameters__redshift);;

let parameters__s3__manifest_file_location ~bucket ~key () =
  ({
    bucket;
    key;
  } : parameters__s3__manifest_file_location);;

let parameters__s3 ~manifest_file_location () =
  ({
    manifest_file_location;
  } : parameters__s3);;

let parameters__service_now ~site_base_url () =
  ({
    site_base_url;
  } : parameters__service_now);;

let parameters__snowflake ~database ~host ~warehouse () =
  ({
    database;
    host;
    warehouse;
  } : parameters__snowflake);;

let parameters__spark ~host ~port () =
  ({
    host;
    port;
  } : parameters__spark);;

let parameters__sql_server ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__sql_server);;

let parameters__teradata ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__teradata);;

let parameters__twitter ~max_rows ~query () =
  ({
    max_rows;
    query;
  } : parameters__twitter);;

let parameters ?(amazon_elasticsearch=[]) ?(athena=[]) ?(aurora=[]) ?(aurora_postgresql=[]) ?(aws_iot_analytics=[]) ?(jira=[]) ?(maria_db=[]) ?(mysql=[]) ?(oracle=[]) ?(postgresql=[]) ?(presto=[]) ?(rds=[]) ?(redshift=[]) ?(s3=[]) ?(service_now=[]) ?(snowflake=[]) ?(spark=[]) ?(sql_server=[]) ?(teradata=[]) ?(twitter=[]) () =
  ({
    amazon_elasticsearch;
    athena;
    aurora;
    aurora_postgresql;
    aws_iot_analytics;
    jira;
    maria_db;
    mysql;
    oracle;
    postgresql;
    presto;
    rds;
    redshift;
    s3;
    service_now;
    snowflake;
    spark;
    sql_server;
    teradata;
    twitter;
  } : parameters);;

let permission ~actions ~principal () =
  ({
    actions;
    principal;
  } : permission);;

let ssl_properties ~disable_ssl () =
  ({
    disable_ssl;
  } : ssl_properties);;

let vpc_connection_properties ~vpc_connection_arn () =
  ({
    vpc_connection_arn;
  } : vpc_connection_properties);;

let aws_quicksight_data_source ?aws_account_id ?id ?tags ?tags_all ?(credentials=[]) ?(ssl_properties=[]) ?(vpc_connection_properties=[]) ~data_source_id ~name ~type_ ~parameters ~permission () =
  ({
    aws_account_id;
    data_source_id;
    id;
    name;
    tags;
    tags_all;
    type_;
    credentials;
    parameters;
    permission;
    ssl_properties;
    vpc_connection_properties;
  } : aws_quicksight_data_source);;

type t = {
  tf_name: string;
  arn: string prop;
  aws_account_id: string prop;
  data_source_id: string prop;
  id: string prop;
  name: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
  type_: string prop;
}

let make ?aws_account_id ?id ?tags ?tags_all ?(credentials=[]) ?(ssl_properties=[]) ?(vpc_connection_properties=[]) ~data_source_id ~name ~type_ ~parameters ~permission __id =
  let __type = "aws_quicksight_data_source" in
  let __attrs = ({
    tf_name = __id;
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    data_source_id = Prop.computed __type __id "data_source_id";
    id = Prop.computed __type __id "id";
    name = Prop.computed __type __id "name";
    tags = Prop.computed __type __id "tags";
    tags_all = Prop.computed __type __id "tags_all";
    type_ = Prop.computed __type __id "type";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_data_source (aws_quicksight_data_source ?aws_account_id ?id ?tags ?tags_all ~credentials ~ssl_properties ~vpc_connection_properties ~data_source_id ~name ~type_ ~parameters ~permission ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?id ?tags ?tags_all ?(credentials=[]) ?(ssl_properties=[]) ?(vpc_connection_properties=[]) ~data_source_id ~name ~type_ ~parameters ~permission __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?id ?tags ?tags_all ~credentials ~ssl_properties ~vpc_connection_properties ~data_source_id ~name ~type_ ~parameters ~permission __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

