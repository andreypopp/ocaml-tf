(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dynamodb_contributor_insights__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dynamodb_contributor_insights__timeouts *)

type aws_dynamodb_contributor_insights = {
  id : string prop option; [@option]  (** id *)
  index_name : string prop option; [@option]  (** index_name *)
  table_name : string prop;  (** table_name *)
  timeouts : aws_dynamodb_contributor_insights__timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_contributor_insights *)

type t = {
  id : string prop;
  index_name : string prop;
  table_name : string prop;
}

let aws_dynamodb_contributor_insights ?id ?index_name ?timeouts
    ~table_name __resource_id =
  let __resource_type = "aws_dynamodb_contributor_insights" in
  let __resource =
    ({ id; index_name; table_name; timeouts }
      : aws_dynamodb_contributor_insights)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_contributor_insights __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       index_name =
         Prop.computed __resource_type __resource_id "index_name";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
     }
      : t)
  in
  __resource_attributes
