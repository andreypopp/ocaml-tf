(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_service_linked_role = {
  aws_service_name : string prop;  (** aws_service_name *)
  custom_suffix : string prop option; [@option]  (** custom_suffix *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_service_linked_role *)

type t = {
  arn : string prop;
  aws_service_name : string prop;
  create_date : string prop;
  custom_suffix : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

let aws_iam_service_linked_role ?custom_suffix ?description ?id ?tags
    ?tags_all ~aws_service_name __resource_id =
  let __resource_type = "aws_iam_service_linked_role" in
  let __resource =
    ({
       aws_service_name;
       custom_suffix;
       description;
       id;
       tags;
       tags_all;
     }
      : aws_iam_service_linked_role)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_service_linked_role __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       aws_service_name =
         Prop.computed __resource_type __resource_id
           "aws_service_name";
       create_date =
         Prop.computed __resource_type __resource_id "create_date";
       custom_suffix =
         Prop.computed __resource_type __resource_id "custom_suffix";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       path = Prop.computed __resource_type __resource_id "path";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       unique_id =
         Prop.computed __resource_type __resource_id "unique_id";
     }
      : t)
  in
  __resource_attributes
