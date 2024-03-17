(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_wafv2_web_acl_association__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_association__timeouts *)

type aws_wafv2_web_acl_association = {
  resource_arn : string;  (** resource_arn *)
  web_acl_arn : string;  (** web_acl_arn *)
  timeouts : aws_wafv2_web_acl_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_wafv2_web_acl_association *)

let aws_wafv2_web_acl_association ?timeouts ~resource_arn
    ~web_acl_arn __resource_id =
  let __resource_type = "aws_wafv2_web_acl_association" in
  let __resource = { resource_arn; web_acl_arn; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_web_acl_association __resource);
  ()
