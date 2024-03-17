(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_web_acl_association = {
  resource_arn : string;  (** resource_arn *)
  web_acl_id : string;  (** web_acl_id *)
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl_association *)

let aws_wafregional_web_acl_association ~resource_arn ~web_acl_id
    __resource_id =
  let __resource_type = "aws_wafregional_web_acl_association" in
  let __resource = { resource_arn; web_acl_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_web_acl_association __resource);
  ()
