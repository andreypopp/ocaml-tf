(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dynamodb_contributor_insights__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dynamodb_contributor_insights__timeouts *)

type aws_dynamodb_contributor_insights = {
  index_name : string option; [@option]  (** index_name *)
  table_name : string;  (** table_name *)
  timeouts : aws_dynamodb_contributor_insights__timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_contributor_insights *)

let aws_dynamodb_contributor_insights ?index_name ?timeouts
    ~table_name __resource_id =
  let __resource_type = "aws_dynamodb_contributor_insights" in
  let __resource = { index_name; table_name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_contributor_insights __resource);
  ()
