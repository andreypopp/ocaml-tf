(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_waf_ipset__ip_set_descriptors = {
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_waf_ipset__ip_set_descriptors *)

type aws_waf_ipset = {
  name : string;  (** name *)
  ip_set_descriptors : aws_waf_ipset__ip_set_descriptors list;
}
[@@deriving yojson_of]
(** aws_waf_ipset *)

let aws_waf_ipset ~name ~ip_set_descriptors __resource_id =
  let __resource_type = "aws_waf_ipset" in
  let __resource = { name; ip_set_descriptors } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_ipset __resource);
  ()
