(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_waf_regex_pattern_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  regex_pattern_strings : string prop list option; [@option]
      (** regex_pattern_strings *)
}
[@@deriving yojson_of]
(** aws_waf_regex_pattern_set *)

let aws_waf_regex_pattern_set ?id ?regex_pattern_strings ~name () :
    aws_waf_regex_pattern_set =
  { id; name; regex_pattern_strings }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  regex_pattern_strings : string list prop;
}

let make ?id ?regex_pattern_strings ~name __id =
  let __type = "aws_waf_regex_pattern_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       regex_pattern_strings =
         Prop.computed __type __id "regex_pattern_strings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_regex_pattern_set
        (aws_waf_regex_pattern_set ?id ?regex_pattern_strings ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?regex_pattern_strings ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?regex_pattern_strings ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
