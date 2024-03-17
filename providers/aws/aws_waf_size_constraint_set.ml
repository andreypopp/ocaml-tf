(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_waf_size_constraint_set__size_constraints__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_size_constraint_set__size_constraints__field_to_match *)

type aws_waf_size_constraint_set__size_constraints = {
  comparison_operator : string prop;  (** comparison_operator *)
  size : float prop;  (** size *)
  text_transformation : string prop;  (** text_transformation *)
  field_to_match :
    aws_waf_size_constraint_set__size_constraints__field_to_match
    list;
}
[@@deriving yojson_of]
(** aws_waf_size_constraint_set__size_constraints *)

type aws_waf_size_constraint_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  size_constraints :
    aws_waf_size_constraint_set__size_constraints list;
}
[@@deriving yojson_of]
(** aws_waf_size_constraint_set *)

type t = { arn : string prop; id : string prop; name : string prop }

let aws_waf_size_constraint_set ?id ~name ~size_constraints
    __resource_id =
  let __resource_type = "aws_waf_size_constraint_set" in
  let __resource =
    ({ id; name; size_constraints } : aws_waf_size_constraint_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_size_constraint_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
