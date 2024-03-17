(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_shield_proactive_engagement__emergency_contact = {
  contact_notes : string option; [@option]  (** contact_notes *)
  email_address : string;  (** email_address *)
  phone_number : string option; [@option]  (** phone_number *)
}
[@@deriving yojson_of]
(** aws_shield_proactive_engagement__emergency_contact *)

type aws_shield_proactive_engagement = {
  enabled : bool;  (** enabled *)
  emergency_contact :
    aws_shield_proactive_engagement__emergency_contact list;
}
[@@deriving yojson_of]
(** aws_shield_proactive_engagement *)

let aws_shield_proactive_engagement ~enabled ~emergency_contact
    __resource_id =
  let __resource_type = "aws_shield_proactive_engagement" in
  let __resource = { enabled; emergency_contact } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_proactive_engagement __resource);
  ()
