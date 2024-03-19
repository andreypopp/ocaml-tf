(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type xss_match_tuples__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** xss_match_tuples__field_to_match *)

type xss_match_tuples = {
  text_transformation : string prop;  (** text_transformation *)
  field_to_match : xss_match_tuples__field_to_match list;
}
[@@deriving yojson_of]
(** xss_match_tuples *)

type aws_waf_xss_match_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  xss_match_tuples : xss_match_tuples list;
}
[@@deriving yojson_of]
(** aws_waf_xss_match_set *)

let xss_match_tuples__field_to_match ?data ~type_ () :
    xss_match_tuples__field_to_match =
  { data; type_ }

let xss_match_tuples ~text_transformation ~field_to_match () :
    xss_match_tuples =
  { text_transformation; field_to_match }

let aws_waf_xss_match_set ?id ~name ~xss_match_tuples () :
    aws_waf_xss_match_set =
  { id; name; xss_match_tuples }

type t = { arn : string prop; id : string prop; name : string prop }

let register ?tf_module ?id ~name ~xss_match_tuples __resource_id =
  let __resource_type = "aws_waf_xss_match_set" in
  let __resource =
    aws_waf_xss_match_set ?id ~name ~xss_match_tuples ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_xss_match_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
