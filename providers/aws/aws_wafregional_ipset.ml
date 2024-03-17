(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_ipset__ip_set_descriptor = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_wafregional_ipset__ip_set_descriptor *)

type aws_wafregional_ipset = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  ip_set_descriptor : aws_wafregional_ipset__ip_set_descriptor list;
}
[@@deriving yojson_of]
(** aws_wafregional_ipset *)

type t = { arn : string prop; id : string prop; name : string prop }

let aws_wafregional_ipset ?id ~name ~ip_set_descriptor __resource_id
    =
  let __resource_type = "aws_wafregional_ipset" in
  let __resource =
    ({ id; name; ip_set_descriptor } : aws_wafregional_ipset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_ipset __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
