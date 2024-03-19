(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_email_identity_mail_from_attributes = {
  behavior_on_mx_failure : string prop option; [@option]
      (** behavior_on_mx_failure *)
  email_identity : string prop;  (** email_identity *)
  id : string prop option; [@option]  (** id *)
  mail_from_domain : string prop option; [@option]
      (** mail_from_domain *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity_mail_from_attributes *)

let aws_sesv2_email_identity_mail_from_attributes
    ?behavior_on_mx_failure ?id ?mail_from_domain ~email_identity ()
    : aws_sesv2_email_identity_mail_from_attributes =
  { behavior_on_mx_failure; email_identity; id; mail_from_domain }

type t = {
  behavior_on_mx_failure : string prop;
  email_identity : string prop;
  id : string prop;
  mail_from_domain : string prop;
}

let register ?tf_module ?behavior_on_mx_failure ?id ?mail_from_domain
    ~email_identity __resource_id =
  let __resource_type =
    "aws_sesv2_email_identity_mail_from_attributes"
  in
  let __resource =
    aws_sesv2_email_identity_mail_from_attributes
      ?behavior_on_mx_failure ?id ?mail_from_domain ~email_identity
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_email_identity_mail_from_attributes
       __resource);
  let __resource_attributes =
    ({
       behavior_on_mx_failure =
         Prop.computed __resource_type __resource_id
           "behavior_on_mx_failure";
       email_identity =
         Prop.computed __resource_type __resource_id "email_identity";
       id = Prop.computed __resource_type __resource_id "id";
       mail_from_domain =
         Prop.computed __resource_type __resource_id
           "mail_from_domain";
     }
      : t)
  in
  __resource_attributes
