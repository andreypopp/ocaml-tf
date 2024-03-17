(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_ml_transform__input_record_tables = {
  catalog_id : string option; [@option]  (** catalog_id *)
  connection_name : string option; [@option]  (** connection_name *)
  database_name : string;  (** database_name *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_glue_ml_transform__input_record_tables *)

type aws_glue_ml_transform__parameters__find_matches_parameters = {
  accuracy_cost_trade_off : float option; [@option]
      (** accuracy_cost_trade_off *)
  enforce_provided_labels : bool option; [@option]
      (** enforce_provided_labels *)
  precision_recall_trade_off : float option; [@option]
      (** precision_recall_trade_off *)
  primary_key_column_name : string option; [@option]
      (** primary_key_column_name *)
}
[@@deriving yojson_of]
(** aws_glue_ml_transform__parameters__find_matches_parameters *)

type aws_glue_ml_transform__parameters = {
  transform_type : string;  (** transform_type *)
  find_matches_parameters :
    aws_glue_ml_transform__parameters__find_matches_parameters list;
}
[@@deriving yojson_of]
(** aws_glue_ml_transform__parameters *)

type aws_glue_ml_transform__schema = {
  data_type : string;  (** data_type *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_glue_ml_transform = {
  description : string option; [@option]  (** description *)
  max_retries : float option; [@option]  (** max_retries *)
  name : string;  (** name *)
  number_of_workers : float option; [@option]
      (** number_of_workers *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeout : float option; [@option]  (** timeout *)
  worker_type : string option; [@option]  (** worker_type *)
  input_record_tables :
    aws_glue_ml_transform__input_record_tables list;
  parameters : aws_glue_ml_transform__parameters list;
}
[@@deriving yojson_of]
(** aws_glue_ml_transform *)

let aws_glue_ml_transform ?description ?max_retries
    ?number_of_workers ?tags ?timeout ?worker_type ~name ~role_arn
    ~input_record_tables ~parameters __resource_id =
  let __resource_type = "aws_glue_ml_transform" in
  let __resource =
    {
      description;
      max_retries;
      name;
      number_of_workers;
      role_arn;
      tags;
      timeout;
      worker_type;
      input_record_tables;
      parameters;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_ml_transform __resource);
  ()
