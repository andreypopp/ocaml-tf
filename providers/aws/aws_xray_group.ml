(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type insights_configuration = {
  insights_enabled : bool prop;  (** insights_enabled *)
  notifications_enabled : bool prop option; [@option]
      (** notifications_enabled *)
}
[@@deriving yojson_of]
(** insights_configuration *)

type aws_xray_group = {
  filter_expression : string prop;  (** filter_expression *)
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  insights_configuration : insights_configuration list;
}
[@@deriving yojson_of]
(** aws_xray_group *)

let insights_configuration ?notifications_enabled ~insights_enabled
    () : insights_configuration =
  { insights_enabled; notifications_enabled }

let aws_xray_group ?id ?tags ?tags_all ~filter_expression ~group_name
    ~insights_configuration () : aws_xray_group =
  {
    filter_expression;
    group_name;
    id;
    tags;
    tags_all;
    insights_configuration;
  }

type t = {
  arn : string prop;
  filter_expression : string prop;
  group_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~filter_expression
    ~group_name ~insights_configuration __resource_id =
  let __resource_type = "aws_xray_group" in
  let __resource =
    aws_xray_group ?id ?tags ?tags_all ~filter_expression ~group_name
      ~insights_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_xray_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       filter_expression =
         Prop.computed __resource_type __resource_id
           "filter_expression";
       group_name =
         Prop.computed __resource_type __resource_id "group_name";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
