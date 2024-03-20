(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ~enabled ~emergency_contact __id =
  let __type = "aws_shield_proactive_engagement" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_proactive_engagement
        (aws_shield_proactive_engagement ~enabled ~emergency_contact
           ());
    attrs = __attrs;
  }

let register ?tf_module ~enabled ~emergency_contact __id =
  let (r : _ Tf_core.resource) =
    make ~enabled ~emergency_contact __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
