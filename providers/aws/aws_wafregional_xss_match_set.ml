(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type xss_match_tuple__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** xss_match_tuple__field_to_match *)

type xss_match_tuple = {
  text_transformation : string prop;  (** text_transformation *)
  field_to_match : xss_match_tuple__field_to_match list;
}
[@@deriving yojson_of]
(** xss_match_tuple *)

type aws_wafregional_xss_match_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  xss_match_tuple : xss_match_tuple list;
}
[@@deriving yojson_of]
(** aws_wafregional_xss_match_set *)

let xss_match_tuple__field_to_match ?data ~type_ () :
    xss_match_tuple__field_to_match =
  { data; type_ }

let xss_match_tuple ~text_transformation ~field_to_match () :
    xss_match_tuple =
  { text_transformation; field_to_match }

let aws_wafregional_xss_match_set ?id ~name ~xss_match_tuple () :
    aws_wafregional_xss_match_set =
  { id; name; xss_match_tuple }

type t = { id : string prop; name : string prop }

let register ?tf_module ?id ~name ~xss_match_tuple __resource_id =
  let __resource_type = "aws_wafregional_xss_match_set" in
  let __resource =
    aws_wafregional_xss_match_set ?id ~name ~xss_match_tuple ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_xss_match_set __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
