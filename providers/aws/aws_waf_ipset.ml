(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_waf_ipset__ip_set_descriptors = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_waf_ipset__ip_set_descriptors *)

type aws_waf_ipset = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  ip_set_descriptors : aws_waf_ipset__ip_set_descriptors list;
}
[@@deriving yojson_of]
(** aws_waf_ipset *)

type t = { arn : string prop; id : string prop; name : string prop }

let aws_waf_ipset ?id ~name ~ip_set_descriptors __resource_id =
  let __resource_type = "aws_waf_ipset" in
  let __resource =
    ({ id; name; ip_set_descriptors } : aws_waf_ipset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_ipset __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
