(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_domain_mail_from = {
  behavior_on_mx_failure : string prop option; [@option]
      (** behavior_on_mx_failure *)
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
  mail_from_domain : string prop;  (** mail_from_domain *)
}
[@@deriving yojson_of]
(** aws_ses_domain_mail_from *)

let aws_ses_domain_mail_from ?behavior_on_mx_failure ?id ~domain
    ~mail_from_domain __resource_id =
  let __resource_type = "aws_ses_domain_mail_from" in
  let __resource =
    { behavior_on_mx_failure; domain; id; mail_from_domain }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_domain_mail_from __resource);
  ()
