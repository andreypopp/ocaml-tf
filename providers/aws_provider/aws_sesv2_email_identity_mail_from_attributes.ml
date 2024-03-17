(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sesv2_email_identity_mail_from_attributes = {
  behavior_on_mx_failure : string option; [@option]
      (** behavior_on_mx_failure *)
  email_identity : string;  (** email_identity *)
  mail_from_domain : string option; [@option]  (** mail_from_domain *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity_mail_from_attributes *)

let aws_sesv2_email_identity_mail_from_attributes
    ?behavior_on_mx_failure ?mail_from_domain ~email_identity
    __resource_id =
  let __resource_type =
    "aws_sesv2_email_identity_mail_from_attributes"
  in
  let __resource =
    { behavior_on_mx_failure; email_identity; mail_from_domain }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_email_identity_mail_from_attributes
       __resource);
  ()
