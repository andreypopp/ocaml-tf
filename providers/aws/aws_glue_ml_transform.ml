(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input_record_tables = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  connection_name : string prop option; [@option]
      (** connection_name *)
  database_name : string prop;  (** database_name *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** input_record_tables *)

type parameters__find_matches_parameters = {
  accuracy_cost_trade_off : float prop option; [@option]
      (** accuracy_cost_trade_off *)
  enforce_provided_labels : bool prop option; [@option]
      (** enforce_provided_labels *)
  precision_recall_trade_off : float prop option; [@option]
      (** precision_recall_trade_off *)
  primary_key_column_name : string prop option; [@option]
      (** primary_key_column_name *)
}
[@@deriving yojson_of]
(** parameters__find_matches_parameters *)

type parameters = {
  transform_type : string prop;  (** transform_type *)
  find_matches_parameters : parameters__find_matches_parameters list;
}
[@@deriving yojson_of]
(** parameters *)

type schema = {
  data_type : string prop;  (** data_type *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_glue_ml_transform = {
  description : string prop option; [@option]  (** description *)
  glue_version : string prop option; [@option]  (** glue_version *)
  id : string prop option; [@option]  (** id *)
  max_capacity : float prop option; [@option]  (** max_capacity *)
  max_retries : float prop option; [@option]  (** max_retries *)
  name : string prop;  (** name *)
  number_of_workers : float prop option; [@option]
      (** number_of_workers *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeout : float prop option; [@option]  (** timeout *)
  worker_type : string prop option; [@option]  (** worker_type *)
  input_record_tables : input_record_tables list;
  parameters : parameters list;
}
[@@deriving yojson_of]
(** aws_glue_ml_transform *)

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
