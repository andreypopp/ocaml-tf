(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_wafregional_rate_based_rule__predicate = {
  data_id : string;  (** data_id *)
  negated : bool;  (** negated *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_rate_based_rule__predicate *)

type aws_wafregional_rate_based_rule = {
  metric_name : string;  (** metric_name *)
  name : string;  (** name *)
  rate_key : string;  (** rate_key *)
  rate_limit : float;  (** rate_limit *)
  tags : (string * string) list option; [@option]  (** tags *)
  predicate : aws_wafregional_rate_based_rule__predicate list;
}
[@@deriving yojson_of]
(** aws_wafregional_rate_based_rule *)

let aws_wafregional_rate_based_rule ?tags ~metric_name ~name
    ~rate_key ~rate_limit ~predicate __resource_id =
  let __resource_type = "aws_wafregional_rate_based_rule" in
  let __resource =
    { metric_name; name; rate_key; rate_limit; tags; predicate }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_rate_based_rule __resource);
  ()