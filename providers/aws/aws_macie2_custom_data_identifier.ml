(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_macie2_custom_data_identifier ?description ?id ?ignore_words
    ?keywords ?maximum_match_distance ?name ?name_prefix ?regex ?tags
    ?tags_all () : aws_macie2_custom_data_identifier =
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

let make ?description ?id ?ignore_words ?keywords
    ?maximum_match_distance ?name ?name_prefix ?regex ?tags ?tags_all
    __id =
  let __type = "aws_macie2_custom_data_identifier" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ignore_words = Prop.computed __type __id "ignore_words";
       keywords = Prop.computed __type __id "keywords";
       maximum_match_distance =
         Prop.computed __type __id "maximum_match_distance";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       regex = Prop.computed __type __id "regex";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_custom_data_identifier
        (aws_macie2_custom_data_identifier ?description ?id
           ?ignore_words ?keywords ?maximum_match_distance ?name
           ?name_prefix ?regex ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ignore_words ?keywords
    ?maximum_match_distance ?name ?name_prefix ?regex ?tags ?tags_all
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ignore_words ?keywords
      ?maximum_match_distance ?name ?name_prefix ?regex ?tags
      ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
