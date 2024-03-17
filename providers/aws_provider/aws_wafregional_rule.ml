(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_wafregional_rule__predicate = {
  data_id : string;  (** data_id *)
  negated : bool;  (** negated *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_rule__predicate *)

type aws_wafregional_rule = {
  metric_name : string;  (** metric_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  predicate : aws_wafregional_rule__predicate list;
}
[@@deriving yojson_of]
(** aws_wafregional_rule *)

let aws_wafregional_rule ?tags ~metric_name ~name ~predicate
    __resource_id =
  let __resource_type = "aws_wafregional_rule" in
  let __resource = { metric_name; name; tags; predicate } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_rule __resource);
  ()
