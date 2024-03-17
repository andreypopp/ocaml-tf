(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_ingestion = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  data_set_id: string prop;  (** data_set_id *)
  ingestion_id: string prop;  (** ingestion_id *)
  ingestion_type: string prop;  (** ingestion_type *)
} [@@deriving yojson_of]
(** aws_quicksight_ingestion *)

type t = {
  arn: string prop;
  aws_account_id: string prop;
  data_set_id: string prop;
  id: string prop;
  ingestion_id: string prop;
  ingestion_status: string prop;
  ingestion_type: string prop;
}

let aws_quicksight_ingestion ?aws_account_id  ~data_set_id ~ingestion_id ~ingestion_type  __resource_id =
  let __resource_type = "aws_quicksight_ingestion" in
  let __resource = ({
    aws_account_id;
    data_set_id;
    ingestion_id;
    ingestion_type;
  } : aws_quicksight_ingestion) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_ingestion __resource);
  let __resource_attributes = ({
    arn = Prop.computed __resource_type __resource_id "arn";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    data_set_id = Prop.computed __resource_type __resource_id "data_set_id";
    id = Prop.computed __resource_type __resource_id "id";
    ingestion_id = Prop.computed __resource_type __resource_id "ingestion_id";
    ingestion_status = Prop.computed __resource_type __resource_id "ingestion_status";
    ingestion_type = Prop.computed __resource_type __resource_id "ingestion_type";
  } : t) in
  __resource_attributes;;

