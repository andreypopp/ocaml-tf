(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input_record_tables = {
  catalog_id : string prop option; [@option]
  connection_name : string prop option; [@option]
  database_name : string prop;
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_record_tables) -> ()

let yojson_of_input_record_tables =
  (function
   | {
       catalog_id = v_catalog_id;
       connection_name = v_connection_name;
       database_name = v_database_name;
       table_name = v_table_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_record_tables -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_record_tables

[@@@deriving.end]

type parameters__find_matches_parameters = {
  accuracy_cost_trade_off : float prop option; [@option]
  enforce_provided_labels : bool prop option; [@option]
  precision_recall_trade_off : float prop option; [@option]
  primary_key_column_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters__find_matches_parameters) -> ()

let yojson_of_parameters__find_matches_parameters =
  (function
   | {
       accuracy_cost_trade_off = v_accuracy_cost_trade_off;
       enforce_provided_labels = v_enforce_provided_labels;
       precision_recall_trade_off = v_precision_recall_trade_off;
       primary_key_column_name = v_primary_key_column_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_key_column_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_key_column_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_precision_recall_trade_off with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "precision_recall_trade_off", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce_provided_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce_provided_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accuracy_cost_trade_off with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "accuracy_cost_trade_off", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : parameters__find_matches_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters__find_matches_parameters

[@@@deriving.end]

type parameters = {
  transform_type : string prop;
  find_matches_parameters : parameters__find_matches_parameters list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters) -> ()

let yojson_of_parameters =
  (function
   | {
       transform_type = v_transform_type;
       find_matches_parameters = v_find_matches_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_find_matches_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_parameters__find_matches_parameters)
               v_find_matches_parameters
           in
           let bnd = "find_matches_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transform_type
         in
         ("transform_type", arg) :: bnds
       in
       `Assoc bnds
    : parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters

[@@@deriving.end]

type schema = { data_type : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : schema) -> ()

let yojson_of_schema =
  (function
   | { data_type = v_data_type; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_type in
         ("data_type", arg) :: bnds
       in
       `Assoc bnds
    : schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema

[@@@deriving.end]

type aws_glue_ml_transform = {
  description : string prop option; [@option]
  glue_version : string prop option; [@option]
  id : string prop option; [@option]
  max_capacity : float prop option; [@option]
  max_retries : float prop option; [@option]
  name : string prop;
  number_of_workers : float prop option; [@option]
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeout : float prop option; [@option]
  worker_type : string prop option; [@option]
  input_record_tables : input_record_tables list;
      [@default []] [@yojson_drop_default ( = )]
  parameters : parameters list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_ml_transform) -> ()

let yojson_of_aws_glue_ml_transform =
  (function
   | {
       description = v_description;
       glue_version = v_glue_version;
       id = v_id;
       max_capacity = v_max_capacity;
       max_retries = v_max_retries;
       name = v_name;
       number_of_workers = v_number_of_workers;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       timeout = v_timeout;
       worker_type = v_worker_type;
       input_record_tables = v_input_record_tables;
       parameters = v_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameters) v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_input_record_tables then bnds
         else
           let arg =
             (yojson_of_list yojson_of_input_record_tables)
               v_input_record_tables
           in
           let bnd = "input_record_tables", arg in
           bnd :: bnds
       in
       let bnds =
         match v_worker_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_number_of_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_workers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_capacity", arg in
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
         match v_glue_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "glue_version", arg in
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
       `Assoc bnds
    : aws_glue_ml_transform -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_ml_transform

[@@@deriving.end]

let input_record_tables ?catalog_id ?connection_name ~database_name
    ~table_name () : input_record_tables =
  { catalog_id; connection_name; database_name; table_name }

let parameters__find_matches_parameters ?accuracy_cost_trade_off
    ?enforce_provided_labels ?precision_recall_trade_off
    ?primary_key_column_name () : parameters__find_matches_parameters
    =
  {
    accuracy_cost_trade_off;
    enforce_provided_labels;
    precision_recall_trade_off;
    primary_key_column_name;
  }

let parameters ~transform_type ~find_matches_parameters () :
    parameters =
  { transform_type; find_matches_parameters }

let aws_glue_ml_transform ?description ?glue_version ?id
    ?max_capacity ?max_retries ?number_of_workers ?tags ?tags_all
    ?timeout ?worker_type ~name ~role_arn ~input_record_tables
    ~parameters () : aws_glue_ml_transform =
  {
    description;
    glue_version;
    id;
    max_capacity;
    max_retries;
    name;
    number_of_workers;
    role_arn;
    tags;
    tags_all;
    timeout;
    worker_type;
    input_record_tables;
    parameters;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  glue_version : string prop;
  id : string prop;
  label_count : float prop;
  max_capacity : float prop;
  max_retries : float prop;
  name : string prop;
  number_of_workers : float prop;
  role_arn : string prop;
  schema : schema list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  worker_type : string prop;
}

let make ?description ?glue_version ?id ?max_capacity ?max_retries
    ?number_of_workers ?tags ?tags_all ?timeout ?worker_type ~name
    ~role_arn ~input_record_tables ~parameters __id =
  let __type = "aws_glue_ml_transform" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       glue_version = Prop.computed __type __id "glue_version";
       id = Prop.computed __type __id "id";
       label_count = Prop.computed __type __id "label_count";
       max_capacity = Prop.computed __type __id "max_capacity";
       max_retries = Prop.computed __type __id "max_retries";
       name = Prop.computed __type __id "name";
       number_of_workers =
         Prop.computed __type __id "number_of_workers";
       role_arn = Prop.computed __type __id "role_arn";
       schema = Prop.computed __type __id "schema";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timeout = Prop.computed __type __id "timeout";
       worker_type = Prop.computed __type __id "worker_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_ml_transform
        (aws_glue_ml_transform ?description ?glue_version ?id
           ?max_capacity ?max_retries ?number_of_workers ?tags
           ?tags_all ?timeout ?worker_type ~name ~role_arn
           ~input_record_tables ~parameters ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?glue_version ?id ?max_capacity
    ?max_retries ?number_of_workers ?tags ?tags_all ?timeout
    ?worker_type ~name ~role_arn ~input_record_tables ~parameters
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?glue_version ?id ?max_capacity ?max_retries
      ?number_of_workers ?tags ?tags_all ?timeout ?worker_type ~name
      ~role_arn ~input_record_tables ~parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
