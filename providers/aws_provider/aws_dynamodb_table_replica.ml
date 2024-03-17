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
  point_in_time_recovery : bool option; [@option]
      (** point_in_time_recovery *)
  table_class_override : string option; [@option]
      (** table_class_override *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_dynamodb_table_replica__timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_table_replica *)

let aws_dynamodb_table_replica ?point_in_time_recovery
    ?table_class_override ?tags ?timeouts ~global_table_arn
    __resource_id =
  let __resource_type = "aws_dynamodb_table_replica" in
  let __resource =
    {
      global_table_arn;
      point_in_time_recovery;
      table_class_override;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_table_replica __resource);
  ()
