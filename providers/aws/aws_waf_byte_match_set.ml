(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type byte_match_tuples__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** byte_match_tuples__field_to_match *)

type byte_match_tuples = {
  positional_constraint : string prop;  (** positional_constraint *)
  target_string : string prop option; [@option]  (** target_string *)
  text_transformation : string prop;  (** text_transformation *)
  field_to_match : byte_match_tuples__field_to_match list;
}
[@@deriving yojson_of]
(** byte_match_tuples *)

type aws_waf_byte_match_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  byte_match_tuples : byte_match_tuples list;
}
[@@deriving yojson_of]
(** aws_waf_byte_match_set *)

let byte_match_tuples__field_to_match ?data ~type_ () :
    byte_match_tuples__field_to_match =
  { data; type_ }

let byte_match_tuples ?target_string ~positional_constraint
    ~text_transformation ~field_to_match () : byte_match_tuples =
  {
    positional_constraint;
    target_string;
    text_transformation;
    field_to_match;
  }

let aws_waf_byte_match_set ?id ~name ~byte_match_tuples () :
    aws_waf_byte_match_set =
  { id; name; byte_match_tuples }

type t = { id : string prop; name : string prop }

let make ?id ~name ~byte_match_tuples __id =
  let __type = "aws_waf_byte_match_set" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_byte_match_set
        (aws_waf_byte_match_set ?id ~name ~byte_match_tuples ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~byte_match_tuples __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~byte_match_tuples __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
