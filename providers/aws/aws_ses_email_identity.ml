(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_email_identity = {
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ses_email_identity *)

type t = { arn : string prop; email : string prop; id : string prop }

let aws_ses_email_identity ?id ~email __resource_id =
  let __resource_type = "aws_ses_email_identity" in
  let __resource = ({ email; id } : aws_ses_email_identity) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_email_identity __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
