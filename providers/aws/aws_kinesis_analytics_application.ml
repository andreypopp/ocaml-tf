(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudwatch_logging_options = {
  log_stream_arn : string prop;  (** log_stream_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** cloudwatch_logging_options *)

type inputs__kinesis_firehose = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** inputs__kinesis_firehose *)

type inputs__kinesis_stream = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** inputs__kinesis_stream *)

type inputs__parallelism = {
  count : float prop option; [@option]  (** count *)
}
[@@deriving yojson_of]
(** inputs__parallelism *)

type inputs__processing_configuration__lambda = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** inputs__processing_configuration__lambda *)

type inputs__processing_configuration = {
  lambda : inputs__processing_configuration__lambda list;
}
[@@deriving yojson_of]
(** inputs__processing_configuration *)

type inputs__schema__record_columns = {
  mapping : string prop option; [@option]  (** mapping *)
  name : string prop;  (** name *)
  sql_type : string prop;  (** sql_type *)
}
[@@deriving yojson_of]
(** inputs__schema__record_columns *)

type inputs__schema__record_format__mapping_parameters__csv = {
  record_column_delimiter : string prop;
      (** record_column_delimiter *)
  record_row_delimiter : string prop;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** inputs__schema__record_format__mapping_parameters__csv *)

type inputs__schema__record_format__mapping_parameters__json = {
  record_row_path : string prop;  (** record_row_path *)
}
[@@deriving yojson_of]
(** inputs__schema__record_format__mapping_parameters__json *)

type inputs__schema__record_format__mapping_parameters = {
  csv : inputs__schema__record_format__mapping_parameters__csv list;
  json : inputs__schema__record_format__mapping_parameters__json list;
}
[@@deriving yojson_of]
(** inputs__schema__record_format__mapping_parameters *)

type inputs__schema__record_format = {
  mapping_parameters :
    inputs__schema__record_format__mapping_parameters list;
}
[@@deriving yojson_of]
(** inputs__schema__record_format *)

type inputs__schema = {
  record_encoding : string prop option; [@option]
      (** record_encoding *)
  record_columns : inputs__schema__record_columns list;
  record_format : inputs__schema__record_format list;
}
[@@deriving yojson_of]
(** inputs__schema *)

type inputs__starting_position_configuration = {
  starting_position : string prop option; [@option]
      (** starting_position *)
}
[@@deriving yojson_of]
(** inputs__starting_position_configuration *)

type inputs = {
  name_prefix : string prop;  (** name_prefix *)
  kinesis_firehose : inputs__kinesis_firehose list;
  kinesis_stream : inputs__kinesis_stream list;
  parallelism : inputs__parallelism list;
  processing_configuration : inputs__processing_configuration list;
  schema : inputs__schema list;
  starting_position_configuration :
    inputs__starting_position_configuration list;
}
[@@deriving yojson_of]
(** inputs *)

type outputs__kinesis_firehose = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** outputs__kinesis_firehose *)

type outputs__kinesis_stream = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** outputs__kinesis_stream *)

type outputs__lambda = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** outputs__lambda *)

type outputs__schema = {
  record_format_type : string prop;  (** record_format_type *)
}
[@@deriving yojson_of]
(** outputs__schema *)

type outputs = {
  name : string prop;  (** name *)
  kinesis_firehose : outputs__kinesis_firehose list;
  kinesis_stream : outputs__kinesis_stream list;
  lambda : outputs__lambda list;
  schema : outputs__schema list;
}
[@@deriving yojson_of]
(** outputs *)

type reference_data_sources__s3 = {
  bucket_arn : string prop;  (** bucket_arn *)
  file_key : string prop;  (** file_key *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** reference_data_sources__s3 *)

type reference_data_sources__schema__record_columns = {
  mapping : string prop option; [@option]  (** mapping *)
  name : string prop;  (** name *)
  sql_type : string prop;  (** sql_type *)
}
[@@deriving yojson_of]
(** reference_data_sources__schema__record_columns *)

type reference_data_sources__schema__record_format__mapping_parameters__csv = {
  record_column_delimiter : string prop;
      (** record_column_delimiter *)
  record_row_delimiter : string prop;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** reference_data_sources__schema__record_format__mapping_parameters__csv *)

type reference_data_sources__schema__record_format__mapping_parameters__json = {
  record_row_path : string prop;  (** record_row_path *)
}
[@@deriving yojson_of]
(** reference_data_sources__schema__record_format__mapping_parameters__json *)

type reference_data_sources__schema__record_format__mapping_parameters = {
  csv :
    reference_data_sources__schema__record_format__mapping_parameters__csv
    list;
  json :
    reference_data_sources__schema__record_format__mapping_parameters__json
    list;
}
[@@deriving yojson_of]
(** reference_data_sources__schema__record_format__mapping_parameters *)

type reference_data_sources__schema__record_format = {
  mapping_parameters :
    reference_data_sources__schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** reference_data_sources__schema__record_format *)

type reference_data_sources__schema = {
  record_encoding : string prop option; [@option]
      (** record_encoding *)
  record_columns :
    reference_data_sources__schema__record_columns list;
  record_format : reference_data_sources__schema__record_format list;
}
[@@deriving yojson_of]
(** reference_data_sources__schema *)

type reference_data_sources = {
  table_name : string prop;  (** table_name *)
  s3 : reference_data_sources__s3 list;
  schema : reference_data_sources__schema list;
}
[@@deriving yojson_of]
(** reference_data_sources *)

type aws_kinesis_analytics_application = {
  code : string prop option; [@option]  (** code *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  start_application : bool prop option; [@option]
      (** start_application *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  cloudwatch_logging_options : cloudwatch_logging_options list;
  inputs : inputs list;
  outputs : outputs list;
  reference_data_sources : reference_data_sources list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application *)

let cloudwatch_logging_options ~log_stream_arn ~role_arn () :
    cloudwatch_logging_options =
  { log_stream_arn; role_arn }

let inputs__kinesis_firehose ~resource_arn ~role_arn () :
    inputs__kinesis_firehose =
  { resource_arn; role_arn }

let inputs__kinesis_stream ~resource_arn ~role_arn () :
    inputs__kinesis_stream =
  { resource_arn; role_arn }

let inputs__parallelism ?count () : inputs__parallelism = { count }

let inputs__processing_configuration__lambda ~resource_arn ~role_arn
    () : inputs__processing_configuration__lambda =
  { resource_arn; role_arn }

let inputs__processing_configuration ~lambda () :
    inputs__processing_configuration =
  { lambda }

let inputs__schema__record_columns ?mapping ~name ~sql_type () :
    inputs__schema__record_columns =
  { mapping; name; sql_type }

let inputs__schema__record_format__mapping_parameters__csv
    ~record_column_delimiter ~record_row_delimiter () :
    inputs__schema__record_format__mapping_parameters__csv =
  { record_column_delimiter; record_row_delimiter }

let inputs__schema__record_format__mapping_parameters__json
    ~record_row_path () :
    inputs__schema__record_format__mapping_parameters__json =
  { record_row_path }

let inputs__schema__record_format__mapping_parameters ~csv ~json () :
    inputs__schema__record_format__mapping_parameters =
  { csv; json }

let inputs__schema__record_format ~mapping_parameters () :
    inputs__schema__record_format =
  { mapping_parameters }

let inputs__schema ?record_encoding ~record_columns ~record_format ()
    : inputs__schema =
  { record_encoding; record_columns; record_format }

let inputs__starting_position_configuration ?starting_position () :
    inputs__starting_position_configuration =
  { starting_position }

let inputs ~name_prefix ~kinesis_firehose ~kinesis_stream
    ~parallelism ~processing_configuration ~schema
    ~starting_position_configuration () : inputs =
  {
    name_prefix;
    kinesis_firehose;
    kinesis_stream;
    parallelism;
    processing_configuration;
    schema;
    starting_position_configuration;
  }

let outputs__kinesis_firehose ~resource_arn ~role_arn () :
    outputs__kinesis_firehose =
  { resource_arn; role_arn }

let outputs__kinesis_stream ~resource_arn ~role_arn () :
    outputs__kinesis_stream =
  { resource_arn; role_arn }

let outputs__lambda ~resource_arn ~role_arn () : outputs__lambda =
  { resource_arn; role_arn }

let outputs__schema ~record_format_type () : outputs__schema =
  { record_format_type }

let outputs ~name ~kinesis_firehose ~kinesis_stream ~lambda ~schema
    () : outputs =
  { name; kinesis_firehose; kinesis_stream; lambda; schema }

let reference_data_sources__s3 ~bucket_arn ~file_key ~role_arn () :
    reference_data_sources__s3 =
  { bucket_arn; file_key; role_arn }

let reference_data_sources__schema__record_columns ?mapping ~name
    ~sql_type () : reference_data_sources__schema__record_columns =
  { mapping; name; sql_type }

let reference_data_sources__schema__record_format__mapping_parameters__csv
    ~record_column_delimiter ~record_row_delimiter () :
    reference_data_sources__schema__record_format__mapping_parameters__csv
    =
  { record_column_delimiter; record_row_delimiter }

let reference_data_sources__schema__record_format__mapping_parameters__json
    ~record_row_path () :
    reference_data_sources__schema__record_format__mapping_parameters__json
    =
  { record_row_path }

let reference_data_sources__schema__record_format__mapping_parameters
    ~csv ~json () :
    reference_data_sources__schema__record_format__mapping_parameters
    =
  { csv; json }

let reference_data_sources__schema__record_format ~mapping_parameters
    () : reference_data_sources__schema__record_format =
  { mapping_parameters }

let reference_data_sources__schema ?record_encoding ~record_columns
    ~record_format () : reference_data_sources__schema =
  { record_encoding; record_columns; record_format }

let reference_data_sources ~table_name ~s3 ~schema () :
    reference_data_sources =
  { table_name; s3; schema }

let aws_kinesis_analytics_application ?code ?description ?id
    ?start_application ?tags ?tags_all ~name
    ~cloudwatch_logging_options ~inputs ~outputs
    ~reference_data_sources () : aws_kinesis_analytics_application =
  {
    code;
    description;
    id;
    name;
    start_application;
    tags;
    tags_all;
    cloudwatch_logging_options;
    inputs;
    outputs;
    reference_data_sources;
  }

type t = {
  arn : string prop;
  code : string prop;
  create_timestamp : string prop;
  description : string prop;
  id : string prop;
  last_update_timestamp : string prop;
  name : string prop;
  start_application : bool prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let make ?code ?description ?id ?start_application ?tags ?tags_all
    ~name ~cloudwatch_logging_options ~inputs ~outputs
    ~reference_data_sources __id =
  let __type = "aws_kinesis_analytics_application" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       code = Prop.computed __type __id "code";
       create_timestamp =
         Prop.computed __type __id "create_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_update_timestamp =
         Prop.computed __type __id "last_update_timestamp";
       name = Prop.computed __type __id "name";
       start_application =
         Prop.computed __type __id "start_application";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_analytics_application
        (aws_kinesis_analytics_application ?code ?description ?id
           ?start_application ?tags ?tags_all ~name
           ~cloudwatch_logging_options ~inputs ~outputs
           ~reference_data_sources ());
    attrs = __attrs;
  }

let register ?tf_module ?code ?description ?id ?start_application
    ?tags ?tags_all ~name ~cloudwatch_logging_options ~inputs
    ~outputs ~reference_data_sources __id =
  let (r : _ Tf_core.resource) =
    make ?code ?description ?id ?start_application ?tags ?tags_all
      ~name ~cloudwatch_logging_options ~inputs ~outputs
      ~reference_data_sources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
