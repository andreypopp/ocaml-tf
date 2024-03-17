(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_ml_transform__input_record_tables = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  connection_name : string prop option; [@option]
      (** connection_name *)
  database_name : string prop;  (** database_name *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_glue_ml_transform__input_record_tables *)

type aws_glue_ml_transform__parameters__find_matches_parameters = {
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
(** aws_glue_ml_transform__parameters__find_matches_parameters *)

type aws_glue_ml_transform__parameters = {
  transform_type : string prop;  (** transform_type *)
  find_matches_parameters :
    aws_glue_ml_transform__parameters__find_matches_parameters list;
}
[@@deriving yojson_of]
(** aws_glue_ml_transform__parameters *)

type aws_glue_ml_transform__schema = {
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
  input_record_tables :
    aws_glue_ml_transform__input_record_tables list;
  parameters : aws_glue_ml_transform__parameters list;
}
[@@deriving yojson_of]
(** aws_glue_ml_transform *)

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
  schema : aws_glue_ml_transform__schema list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  worker_type : string prop;
}

let aws_glue_ml_transform ?description ?glue_version ?id
    ?max_capacity ?max_retries ?number_of_workers ?tags ?tags_all
    ?timeout ?worker_type ~name ~role_arn ~input_record_tables
    ~parameters __resource_id =
  let __resource_type = "aws_glue_ml_transform" in
  let __resource =
    ({
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
      : aws_glue_ml_transform)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_ml_transform __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       glue_version =
         Prop.computed __resource_type __resource_id "glue_version";
       id = Prop.computed __resource_type __resource_id "id";
       label_count =
         Prop.computed __resource_type __resource_id "label_count";
       max_capacity =
         Prop.computed __resource_type __resource_id "max_capacity";
       max_retries =
         Prop.computed __resource_type __resource_id "max_retries";
       name = Prop.computed __resource_type __resource_id "name";
       number_of_workers =
         Prop.computed __resource_type __resource_id
           "number_of_workers";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       schema = Prop.computed __resource_type __resource_id "schema";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       timeout =
         Prop.computed __resource_type __resource_id "timeout";
       worker_type =
         Prop.computed __resource_type __resource_id "worker_type";
     }
      : t)
  in
  __resource_attributes
