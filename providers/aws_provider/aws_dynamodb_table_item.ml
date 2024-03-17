(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dynamodb_table_item = {
  hash_key : string;  (** hash_key *)
  item : string;  (** item *)
  range_key : string option; [@option]  (** range_key *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table_item *)

let aws_dynamodb_table_item ?range_key ~hash_key ~item ~table_name
    __resource_id =
  let __resource_type = "aws_dynamodb_table_item" in
  let __resource = { hash_key; item; range_key; table_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_table_item __resource);
  ()
