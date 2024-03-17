(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_rule__predicate = {
  data_id : string prop;  (** data_id *)
  negated : bool prop;  (** negated *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_rule__predicate *)

type aws_wafregional_rule = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  predicate : aws_wafregional_rule__predicate list;
}
[@@deriving yojson_of]
(** aws_wafregional_rule *)

let aws_wafregional_rule ?id ?tags ?tags_all ~metric_name ~name
    ~predicate __resource_id =
  let __resource_type = "aws_wafregional_rule" in
  let __resource =
    { id; metric_name; name; tags; tags_all; predicate }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_rule __resource);
  ()
