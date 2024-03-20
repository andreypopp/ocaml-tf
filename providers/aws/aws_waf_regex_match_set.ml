(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type regex_match_tuple__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** regex_match_tuple__field_to_match *)

type regex_match_tuple = {
  regex_pattern_set_id : string prop;  (** regex_pattern_set_id *)
  text_transformation : string prop;  (** text_transformation *)
  field_to_match : regex_match_tuple__field_to_match list;
}
[@@deriving yojson_of]
(** regex_match_tuple *)

type aws_waf_regex_match_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  regex_match_tuple : regex_match_tuple list;
}
[@@deriving yojson_of]
(** aws_waf_regex_match_set *)

let regex_match_tuple__field_to_match ?data ~type_ () :
    regex_match_tuple__field_to_match =
  { data; type_ }

let regex_match_tuple ~regex_pattern_set_id ~text_transformation
    ~field_to_match () : regex_match_tuple =
  { regex_pattern_set_id; text_transformation; field_to_match }

let aws_waf_regex_match_set ?id ~name ~regex_match_tuple () :
    aws_waf_regex_match_set =
  { id; name; regex_match_tuple }

type t = { arn : string prop; id : string prop; name : string prop }

let make ?id ~name ~regex_match_tuple __id =
  let __type = "aws_waf_regex_match_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_regex_match_set
        (aws_waf_regex_match_set ?id ~name ~regex_match_tuple ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~regex_match_tuple __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~regex_match_tuple __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
