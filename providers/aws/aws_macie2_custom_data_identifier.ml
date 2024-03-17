(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_custom_data_identifier = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  ignore_words : string prop list option; [@option]
      (** ignore_words *)
  keywords : string prop list option; [@option]  (** keywords *)
  maximum_match_distance : float prop option; [@option]
      (** maximum_match_distance *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  regex : string prop option; [@option]  (** regex *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_macie2_custom_data_identifier *)

type t = {
  arn : string prop;
  created_at : string prop;
  description : string prop;
  id : string prop;
  ignore_words : string list prop;
  keywords : string list prop;
  maximum_match_distance : float prop;
  name : string prop;
  name_prefix : string prop;
  regex : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_macie2_custom_data_identifier ?description ?id ?ignore_words
    ?keywords ?maximum_match_distance ?name ?name_prefix ?regex ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_macie2_custom_data_identifier" in
  let __resource =
    ({
       description;
       id;
       ignore_words;
       keywords;
       maximum_match_distance;
       name;
       name_prefix;
       regex;
       tags;
       tags_all;
     }
      : aws_macie2_custom_data_identifier)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_custom_data_identifier __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       ignore_words =
         Prop.computed __resource_type __resource_id "ignore_words";
       keywords =
         Prop.computed __resource_type __resource_id "keywords";
       maximum_match_distance =
         Prop.computed __resource_type __resource_id
           "maximum_match_distance";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       regex = Prop.computed __resource_type __resource_id "regex";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
