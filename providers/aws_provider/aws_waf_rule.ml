(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_waf_rule__predicates = {
  data_id : string;  (** data_id *)
  negated : bool;  (** negated *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_rule__predicates *)

type aws_waf_rule = {
  metric_name : string;  (** metric_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  predicates : aws_waf_rule__predicates list;
}
[@@deriving yojson_of]
(** aws_waf_rule *)

let aws_waf_rule ?tags ~metric_name ~name ~predicates __resource_id =
  let __resource_type = "aws_waf_rule" in
  let __resource = { metric_name; name; tags; predicates } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_rule __resource);
  ()
