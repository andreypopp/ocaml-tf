(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafv2_regex_pattern_set__regular_expression = {
  regex_string: string prop;  (** regex_string *)
} [@@deriving yojson_of]
(** aws_wafv2_regex_pattern_set__regular_expression *)

type aws_wafv2_regex_pattern_set = {
  description: string  prop option; [@option] (** description *)
  id: string  prop option; [@option] (** id *)
  name: string prop;  (** name *)
  scope: string prop;  (** scope *)
  tags: (string * string   prop) list option; [@option] (** tags *)
  tags_all: (string * string   prop) list option; [@option] (** tags_all *)
  regular_expression: aws_wafv2_regex_pattern_set__regular_expression list;
} [@@deriving yojson_of]
(** aws_wafv2_regex_pattern_set *)

type t = {
  arn: string prop;
  description: string prop;
  id: string prop;
  lock_token: string prop;
  name: string prop;
  scope: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
}

let aws_wafv2_regex_pattern_set ?description ?id ?tags ?tags_all  ~name ~scope ~regular_expression __resource_id =
  let __resource_type = "aws_wafv2_regex_pattern_set" in
  let __resource = ({
    description;
    id;
    name;
    scope;
    tags;
    tags_all;
    regular_expression;
  } : aws_wafv2_regex_pattern_set) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_regex_pattern_set __resource);
  let __resource_attributes = ({
    arn = Prop.computed __resource_type __resource_id "arn";
    description = Prop.computed __resource_type __resource_id "description";
    id = Prop.computed __resource_type __resource_id "id";
    lock_token = Prop.computed __resource_type __resource_id "lock_token";
    name = Prop.computed __resource_type __resource_id "name";
    scope = Prop.computed __resource_type __resource_id "scope";
    tags = Prop.computed __resource_type __resource_id "tags";
    tags_all = Prop.computed __resource_type __resource_id "tags_all";
  } : t) in
  __resource_attributes;;

