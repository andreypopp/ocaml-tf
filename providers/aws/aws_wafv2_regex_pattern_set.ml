(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type regular_expression = {
  regex_string: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type aws_wafv2_regex_pattern_set = {
  description: string  prop option; [@option]
  id: string  prop option; [@option]
  name: string prop; 
  scope: string prop; 
  tags: (string * string   prop) list option; [@option]
  tags_all: (string * string   prop) list option; [@option]
  regular_expression: regular_expression list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let regular_expression ~regex_string () =
  ({
    regex_string;
  } : regular_expression);;

let aws_wafv2_regex_pattern_set ?description ?id ?tags ?tags_all ~name ~scope ~regular_expression () =
  ({
    description;
    id;
    name;
    scope;
    tags;
    tags_all;
    regular_expression;
  } : aws_wafv2_regex_pattern_set);;

type t = {
  tf_name: string;
  arn: string prop;
  description: string prop;
  id: string prop;
  lock_token: string prop;
  name: string prop;
  scope: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~scope ~regular_expression __id =
  let __type = "aws_wafv2_regex_pattern_set" in
  let __attrs = ({
    tf_name = __id;
    arn = Prop.computed __type __id "arn";
    description = Prop.computed __type __id "description";
    id = Prop.computed __type __id "id";
    lock_token = Prop.computed __type __id "lock_token";
    name = Prop.computed __type __id "name";
    scope = Prop.computed __type __id "scope";
    tags = Prop.computed __type __id "tags";
    tags_all = Prop.computed __type __id "tags_all";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_wafv2_regex_pattern_set (aws_wafv2_regex_pattern_set ?description ?id ?tags ?tags_all ~name ~scope ~regular_expression ());
    attrs=__attrs;
  };;

let register ?tf_module ?description ?id ?tags ?tags_all ~name ~scope ~regular_expression __id =
  let (r : _ Tf_core.resource) = make ?description ?id ?tags ?tags_all ~name ~scope ~regular_expression __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

