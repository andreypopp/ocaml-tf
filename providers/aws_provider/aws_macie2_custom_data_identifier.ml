(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_custom_data_identifier = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  ignore_words : string list option; [@option]  (** ignore_words *)
  keywords : string list option; [@option]  (** keywords *)
  maximum_match_distance : float option; [@option]
      (** maximum_match_distance *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  regex : string option; [@option]  (** regex *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_macie2_custom_data_identifier *)

let aws_macie2_custom_data_identifier ?description ?id ?ignore_words
    ?keywords ?maximum_match_distance ?name ?name_prefix ?regex ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_macie2_custom_data_identifier" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_custom_data_identifier __resource);
  ()
