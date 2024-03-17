(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dynamodb_global_table__replica = {
  region_name : string;  (** region_name *)
}
[@@deriving yojson_of]
(** aws_dynamodb_global_table__replica *)

type aws_dynamodb_global_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dynamodb_global_table__timeouts *)

type aws_dynamodb_global_table = {
  name : string;  (** name *)
  replica : aws_dynamodb_global_table__replica list;
  timeouts : aws_dynamodb_global_table__timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_global_table *)

let aws_dynamodb_global_table ?timeouts ~name ~replica __resource_id
    =
  let __resource_type = "aws_dynamodb_global_table" in
  let __resource = { name; replica; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_global_table __resource);
  ()
