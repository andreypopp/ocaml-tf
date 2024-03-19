(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_policy = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  path : string prop option; [@option]  (** path *)
  policy : string prop;  (** policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_policy *)

let aws_iam_policy ?description ?id ?name ?name_prefix ?path ?tags
    ?tags_all ~policy () : aws_iam_policy =
  {
    description;
    id;
    name;
    name_prefix;
    path;
    policy;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  policy : string prop;
  policy_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?name ?name_prefix ?path
    ?tags ?tags_all ~policy __resource_id =
  let __resource_type = "aws_iam_policy" in
  let __resource =
    aws_iam_policy ?description ?id ?name ?name_prefix ?path ?tags
      ?tags_all ~policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_policy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       path = Prop.computed __resource_type __resource_id "path";
       policy = Prop.computed __resource_type __resource_id "policy";
       policy_id =
         Prop.computed __resource_type __resource_id "policy_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
