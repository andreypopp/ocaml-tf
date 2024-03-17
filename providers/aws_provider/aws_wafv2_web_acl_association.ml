(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafv2_web_acl_association__timeouts = {
  create: string  prop option; [@option] (** create *)
} [@@deriving yojson_of]
(** aws_wafv2_web_acl_association__timeouts *)

type aws_wafv2_web_acl_association = {
  id: string  prop option; [@option] (** id *)
  resource_arn: string prop;  (** resource_arn *)
  web_acl_arn: string prop;  (** web_acl_arn *)
  timeouts: aws_wafv2_web_acl_association__timeouts option;
} [@@deriving yojson_of]
(** aws_wafv2_web_acl_association *)

type t = {
  id: string prop;
  resource_arn: string prop;
  web_acl_arn: string prop;
}

let aws_wafv2_web_acl_association ?id ?timeouts ~resource_arn ~web_acl_arn  __resource_id =
  let __resource_type = "aws_wafv2_web_acl_association" in
  let __resource = ({
    id;
    resource_arn;
    web_acl_arn;
    timeouts;
  } : aws_wafv2_web_acl_association) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_web_acl_association __resource);
  let __resource_attributes = ({
    id = Prop.computed __resource_type __resource_id "id";
    resource_arn = Prop.computed __resource_type __resource_id "resource_arn";
    web_acl_arn = Prop.computed __resource_type __resource_id "web_acl_arn";
  } : t) in
  __resource_attributes;;

