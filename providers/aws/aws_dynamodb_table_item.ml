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
    ~table_name () : aws_dynamodb_table_item =
  { hash_key; id; item; range_key; table_name }

type t = {
  hash_key : string prop;
  id : string prop;
  item : string prop;
  range_key : string prop;
  table_name : string prop;
}

let register ?tf_module ?id ?range_key ~hash_key ~item ~table_name
    __resource_id =
  let __resource_type = "aws_dynamodb_table_item" in
  let __resource =
    aws_dynamodb_table_item ?id ?range_key ~hash_key ~item
      ~table_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_table_item __resource);
  let __resource_attributes =
    ({
       hash_key =
         Prop.computed __resource_type __resource_id "hash_key";
       id = Prop.computed __resource_type __resource_id "id";
       item = Prop.computed __resource_type __resource_id "item";
       range_key =
         Prop.computed __resource_type __resource_id "range_key";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
     }
      : t)
  in
  __resource_attributes
