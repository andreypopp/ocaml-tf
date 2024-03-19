(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_web_acl_association = {
  id : string prop option; [@option]  (** id *)
  resource_arn : string prop;  (** resource_arn *)
  web_acl_id : string prop;  (** web_acl_id *)
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl_association *)

let aws_wafregional_web_acl_association ?id ~resource_arn ~web_acl_id
    () : aws_wafregional_web_acl_association =
  { id; resource_arn; web_acl_id }

type t = {
  id : string prop;
  resource_arn : string prop;
  web_acl_id : string prop;
}

let register ?tf_module ?id ~resource_arn ~web_acl_id __resource_id =
  let __resource_type = "aws_wafregional_web_acl_association" in
  let __resource =
    aws_wafregional_web_acl_association ?id ~resource_arn ~web_acl_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_web_acl_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       web_acl_id =
         Prop.computed __resource_type __resource_id "web_acl_id";
     }
      : t)
  in
  __resource_attributes
