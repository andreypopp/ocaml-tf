(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_ingestion = {
  aws_account_id: string prop option; [@option] (** aws_account_id *)
  data_set_id: string prop;  (** data_set_id *)
  ingestion_id: string prop;  (** ingestion_id *)
  ingestion_type: string prop;  (** ingestion_type *)
} [@@deriving yojson_of]
(** aws_quicksight_ingestion *)

let aws_quicksight_ingestion ?aws_account_id  ~data_set_id ~ingestion_id ~ingestion_type  __resource_id =
  let __resource_type = "aws_quicksight_ingestion" in
  let __resource = {
    aws_account_id;
    data_set_id;
    ingestion_id;
    ingestion_type;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_ingestion __resource);
  ()
  ;;

