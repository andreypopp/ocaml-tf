(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_macie2_custom_data_identifier = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  ignore_words : string prop list option; [@option]
  keywords : string prop list option; [@option]
  maximum_match_distance : float prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  regex : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_macie2_custom_data_identifier) -> ()

let yojson_of_aws_macie2_custom_data_identifier =
  (function
   | {
       description = v_description;
       id = v_id;
       ignore_words = v_ignore_words;
       keywords = v_keywords;
       maximum_match_distance = v_maximum_match_distance;
       name = v_name;
       name_prefix = v_name_prefix;
       regex = v_regex;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_match_distance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_match_distance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keywords with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "keywords", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_words with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ignore_words", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_macie2_custom_data_identifier ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_macie2_custom_data_identifier

[@@@deriving.end]

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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?id ?ignore_words ?keywords
    ?maximum_match_distance ?name ?name_prefix ?regex ?tags ?tags_all
    __id =
  let __type = "aws_macie2_custom_data_identifier" in
  let __attrs =
    ({
       tf_name = __id;
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
