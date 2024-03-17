(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_iam_group *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  unique_id : string prop;
}

let aws_iam_group ?id ?path ~name __resource_id =
  let __resource_type = "aws_iam_group" in
  let __resource = ({ id; name; path } : aws_iam_group) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       path = Prop.computed __resource_type __resource_id "path";
       unique_id =
         Prop.computed __resource_type __resource_id "unique_id";
     }
      : t)
  in
  __resource_attributes
