(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dynamodb_global_table__replica = {
  region_name : string prop;  (** region_name *)
}
[@@deriving yojson_of]
(** aws_dynamodb_global_table__replica *)

type aws_dynamodb_global_table__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dynamodb_global_table__timeouts *)

type aws_dynamodb_global_table = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  replica : aws_dynamodb_global_table__replica list;
  timeouts : aws_dynamodb_global_table__timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_global_table *)

type t = { arn : string prop; id : string prop; name : string prop }

let aws_dynamodb_global_table ?id ?timeouts ~name ~replica
    __resource_id =
  let __resource_type = "aws_dynamodb_global_table" in
  let __resource =
    ({ id; name; replica; timeouts } : aws_dynamodb_global_table)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_global_table __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
