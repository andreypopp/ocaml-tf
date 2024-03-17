(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_ipset__ip_set_descriptor = {
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_wafregional_ipset__ip_set_descriptor *)

type aws_wafregional_ipset = {
  name : string;  (** name *)
  ip_set_descriptor : aws_wafregional_ipset__ip_set_descriptor list;
}
[@@deriving yojson_of]
(** aws_wafregional_ipset *)

let aws_wafregional_ipset ~name ~ip_set_descriptor __resource_id =
  let __resource_type = "aws_wafregional_ipset" in
  let __resource = { name; ip_set_descriptor } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_ipset __resource);
  ()
