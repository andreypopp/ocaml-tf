(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_instance_profile = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  path : string prop option; [@option]  (** path *)
  role : string prop option; [@option]  (** role *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_instance_profile *)

let aws_iam_instance_profile ?id ?name ?name_prefix ?path ?role ?tags
    ?tags_all () : aws_iam_instance_profile =
  { id; name; name_prefix; path; role; tags; tags_all }

type t = {
  arn : string prop;
  create_date : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  role : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

let register ?tf_module ?id ?name ?name_prefix ?path ?role ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_iam_instance_profile" in
  let __resource =
    aws_iam_instance_profile ?id ?name ?name_prefix ?path ?role ?tags
      ?tags_all ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_instance_profile __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       create_date =
         Prop.computed __resource_type __resource_id "create_date";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       path = Prop.computed __resource_type __resource_id "path";
       role = Prop.computed __resource_type __resource_id "role";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       unique_id =
         Prop.computed __resource_type __resource_id "unique_id";
     }
      : t)
  in
  __resource_attributes
