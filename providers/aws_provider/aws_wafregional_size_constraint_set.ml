(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_size_constraint_set__size_constraints__field_to_match = {
  data : string option; [@option]  (** data *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_size_constraint_set__size_constraints__field_to_match *)

type aws_wafregional_size_constraint_set__size_constraints = {
  comparison_operator : string;  (** comparison_operator *)
  size : float;  (** size *)
  text_transformation : string;  (** text_transformation *)
  field_to_match :
    aws_wafregional_size_constraint_set__size_constraints__field_to_match
    list;
}
[@@deriving yojson_of]
(** aws_wafregional_size_constraint_set__size_constraints *)

type aws_wafregional_size_constraint_set = {
  name : string;  (** name *)
  size_constraints :
    aws_wafregional_size_constraint_set__size_constraints list;
}
[@@deriving yojson_of]
(** aws_wafregional_size_constraint_set *)

let aws_wafregional_size_constraint_set ~name ~size_constraints
    __resource_id =
  let __resource_type = "aws_wafregional_size_constraint_set" in
  let __resource = { name; size_constraints } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_size_constraint_set __resource);
  ()
