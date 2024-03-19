(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type emergency_contact = {
  contact_notes : string prop option; [@option]  (** contact_notes *)
  email_address : string prop;  (** email_address *)
  phone_number : string prop option; [@option]  (** phone_number *)
}
[@@deriving yojson_of]
(** emergency_contact *)

type aws_shield_proactive_engagement = {
  enabled : bool prop;  (** enabled *)
  emergency_contact : emergency_contact list;
}
[@@deriving yojson_of]
(** aws_shield_proactive_engagement *)

let emergency_contact ?contact_notes ?phone_number ~email_address ()
    : emergency_contact =
  { contact_notes; email_address; phone_number }

let aws_shield_proactive_engagement ~enabled ~emergency_contact () :
    aws_shield_proactive_engagement =
  { enabled; emergency_contact }

type t = { enabled : bool prop; id : string prop }

let register ?tf_module ~enabled ~emergency_contact __resource_id =
  let __resource_type = "aws_shield_proactive_engagement" in
  let __resource =
    aws_shield_proactive_engagement ~enabled ~emergency_contact ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_proactive_engagement __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
