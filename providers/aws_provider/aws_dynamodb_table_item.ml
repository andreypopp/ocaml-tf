(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dynamodb_table_item = {
  hash_key : string prop;  (** hash_key *)
  id : string prop option; [@option]  (** id *)
  item : string prop;  (** item *)
  range_key : string prop option; [@option]  (** range_key *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table_item *)

let aws_dynamodb_table_item ?id ?range_key ~hash_key ~item
    ~table_name __resource_id =
  let __resource_type = "aws_dynamodb_table_item" in
  let __resource = { hash_key; id; item; range_key; table_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_table_item __resource);
  ()
