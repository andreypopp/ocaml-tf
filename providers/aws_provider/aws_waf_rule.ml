(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_waf_rule__predicates = {
  data_id : string prop;  (** data_id *)
  negated : bool prop;  (** negated *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_rule__predicates *)

type aws_waf_rule = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  predicates : aws_waf_rule__predicates list;
}
[@@deriving yojson_of]
(** aws_waf_rule *)

type t = {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_waf_rule ?id ?tags ?tags_all ~metric_name ~name ~predicates
    __resource_id =
  let __resource_type = "aws_waf_rule" in
  let __resource =
    ({ id; metric_name; name; tags; tags_all; predicates }
      : aws_waf_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       metric_name =
         Prop.computed __resource_type __resource_id "metric_name";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
