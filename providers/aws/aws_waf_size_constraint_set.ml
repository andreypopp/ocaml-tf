(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type size_constraints__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** size_constraints__field_to_match *)

type size_constraints = {
  comparison_operator : string prop;  (** comparison_operator *)
  size : float prop;  (** size *)
  text_transformation : string prop;  (** text_transformation *)
  field_to_match : size_constraints__field_to_match list;
}
[@@deriving yojson_of]
(** size_constraints *)

type aws_waf_size_constraint_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  size_constraints : size_constraints list;
}
[@@deriving yojson_of]
(** aws_waf_size_constraint_set *)

let size_constraints__field_to_match ?data ~type_ () :
    size_constraints__field_to_match =
  { data; type_ }

let size_constraints ~comparison_operator ~size ~text_transformation
    ~field_to_match () : size_constraints =
  { comparison_operator; size; text_transformation; field_to_match }

let aws_waf_size_constraint_set ?id ~name ~size_constraints () :
    aws_waf_size_constraint_set =
  { id; name; size_constraints }

type t = { arn : string prop; id : string prop; name : string prop }

let make ?id ~name ~size_constraints __id =
  let __type = "aws_waf_size_constraint_set" in
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
      yojson_of_aws_waf_size_constraint_set
        (aws_waf_size_constraint_set ?id ~name ~size_constraints ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~size_constraints __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~size_constraints __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
