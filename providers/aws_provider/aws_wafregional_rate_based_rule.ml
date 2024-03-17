(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_rate_based_rule__predicate = {
  data_id : string prop;  (** data_id *)
  negated : bool prop;  (** negated *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_rate_based_rule__predicate *)

type aws_wafregional_rate_based_rule = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  rate_key : string prop;  (** rate_key *)
  rate_limit : float prop;  (** rate_limit *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  predicate : aws_wafregional_rate_based_rule__predicate list;
}
[@@deriving yojson_of]
(** aws_wafregional_rate_based_rule *)

type t = {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  rate_key : string prop;
  rate_limit : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_wafregional_rate_based_rule ?id ?tags ?tags_all ~metric_name
    ~name ~rate_key ~rate_limit ~predicate __resource_id =
  let __resource_type = "aws_wafregional_rate_based_rule" in
  let __resource =
    ({
       id;
       metric_name;
       name;
       rate_key;
       rate_limit;
       tags;
       tags_all;
       predicate;
     }
      : aws_wafregional_rate_based_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_rate_based_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       metric_name =
         Prop.computed __resource_type __resource_id "metric_name";
       name = Prop.computed __resource_type __resource_id "name";
       rate_key =
         Prop.computed __resource_type __resource_id "rate_key";
       rate_limit =
         Prop.computed __resource_type __resource_id "rate_limit";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
