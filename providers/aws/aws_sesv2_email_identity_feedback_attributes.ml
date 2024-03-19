(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_email_identity_feedback_attributes = {
  email_forwarding_enabled : bool prop option; [@option]
      (** email_forwarding_enabled *)
  email_identity : string prop;  (** email_identity *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity_feedback_attributes *)

let aws_sesv2_email_identity_feedback_attributes
    ?email_forwarding_enabled ?id ~email_identity () :
    aws_sesv2_email_identity_feedback_attributes =
  { email_forwarding_enabled; email_identity; id }

type t = {
  email_forwarding_enabled : bool prop;
  email_identity : string prop;
  id : string prop;
}

let register ?tf_module ?email_forwarding_enabled ?id ~email_identity
    __resource_id =
  let __resource_type =
    "aws_sesv2_email_identity_feedback_attributes"
  in
  let __resource =
    aws_sesv2_email_identity_feedback_attributes
      ?email_forwarding_enabled ?id ~email_identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_email_identity_feedback_attributes
       __resource);
  let __resource_attributes =
    ({
       email_forwarding_enabled =
         Prop.computed __resource_type __resource_id
           "email_forwarding_enabled";
       email_identity =
         Prop.computed __resource_type __resource_id "email_identity";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
