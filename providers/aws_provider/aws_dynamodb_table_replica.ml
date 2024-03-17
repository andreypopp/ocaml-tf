(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dynamodb_table_replica__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table_replica__timeouts *)

type aws_dynamodb_table_replica = {
  global_table_arn : string;  (** global_table_arn *)
  id : string option; [@option]  (** id *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  point_in_time_recovery : bool option; [@option]
      (** point_in_time_recovery *)
  table_class_override : string option; [@option]
      (** table_class_override *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_dynamodb_table_replica__timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_table_replica *)

let aws_dynamodb_table_replica ?id ?kms_key_arn
    ?point_in_time_recovery ?table_class_override ?tags ?tags_all
    ?timeouts ~global_table_arn __resource_id =
  let __resource_type = "aws_dynamodb_table_replica" in
  let __resource =
    {
      global_table_arn;
      id;
      kms_key_arn;
      point_in_time_recovery;
      table_class_override;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_table_replica __resource);
  ()
