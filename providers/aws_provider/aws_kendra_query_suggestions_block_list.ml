(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kendra_query_suggestions_block_list__source_s3_path = {
  bucket : string;  (** bucket *)
  key : string;  (** key *)
}
[@@deriving yojson_of]
(** aws_kendra_query_suggestions_block_list__source_s3_path *)

type aws_kendra_query_suggestions_block_list__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kendra_query_suggestions_block_list__timeouts *)

type aws_kendra_query_suggestions_block_list = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  index_id : string;  (** index_id *)
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  source_s3_path :
    aws_kendra_query_suggestions_block_list__source_s3_path list;
  timeouts : aws_kendra_query_suggestions_block_list__timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_query_suggestions_block_list *)

let aws_kendra_query_suggestions_block_list ?description ?id ?tags
    ?tags_all ?timeouts ~index_id ~name ~role_arn ~source_s3_path
    __resource_id =
  let __resource_type = "aws_kendra_query_suggestions_block_list" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_query_suggestions_block_list __resource);
  ()
