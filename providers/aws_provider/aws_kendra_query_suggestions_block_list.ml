(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kendra_query_suggestions_block_list__source_s3_path = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** aws_kendra_query_suggestions_block_list__source_s3_path *)

type aws_kendra_query_suggestions_block_list__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kendra_query_suggestions_block_list__timeouts *)

type aws_kendra_query_suggestions_block_list = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_id : string prop;  (** index_id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  source_s3_path :
    aws_kendra_query_suggestions_block_list__source_s3_path list;
  timeouts : aws_kendra_query_suggestions_block_list__timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_query_suggestions_block_list *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  query_suggestions_block_list_id : string prop;
  role_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_kendra_query_suggestions_block_list ?description ?id ?tags
    ?tags_all ?timeouts ~index_id ~name ~role_arn ~source_s3_path
    __resource_id =
  let __resource_type = "aws_kendra_query_suggestions_block_list" in
  let __resource =
    ({
       description;
       id;
       index_id;
       name;
       role_arn;
       tags;
       tags_all;
       source_s3_path;
       timeouts;
     }
      : aws_kendra_query_suggestions_block_list)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_query_suggestions_block_list __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       index_id =
         Prop.computed __resource_type __resource_id "index_id";
       name = Prop.computed __resource_type __resource_id "name";
       query_suggestions_block_list_id =
         Prop.computed __resource_type __resource_id
           "query_suggestions_block_list_id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
