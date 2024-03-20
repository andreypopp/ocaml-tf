(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_guardduty_member = {
  account_id : string prop;  (** account_id *)
  detector_id : string prop;  (** detector_id *)
  disable_email_notification : bool prop option; [@option]
      (** disable_email_notification *)
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
  invitation_message : string prop option; [@option]
      (** invitation_message *)
  invite : bool prop option; [@option]  (** invite *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_guardduty_member *)

let timeouts ?create ?update () : timeouts = { create; update }

let aws_guardduty_member ?disable_email_notification ?id
    ?invitation_message ?invite ?timeouts ~account_id ~detector_id
    ~email () : aws_guardduty_member =
  {
    account_id;
    detector_id;
    disable_email_notification;
    email;
    id;
    invitation_message;
    invite;
    timeouts;
  }

type t = {
  account_id : string prop;
  detector_id : string prop;
  disable_email_notification : bool prop;
  email : string prop;
  id : string prop;
  invitation_message : string prop;
  invite : bool prop;
  relationship_status : string prop;
}

let make ?disable_email_notification ?id ?invitation_message ?invite
    ?timeouts ~account_id ~detector_id ~email __id =
  let __type = "aws_guardduty_member" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       detector_id = Prop.computed __type __id "detector_id";
       disable_email_notification =
         Prop.computed __type __id "disable_email_notification";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       invitation_message =
         Prop.computed __type __id "invitation_message";
       invite = Prop.computed __type __id "invite";
       relationship_status =
         Prop.computed __type __id "relationship_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_member
        (aws_guardduty_member ?disable_email_notification ?id
           ?invitation_message ?invite ?timeouts ~account_id
           ~detector_id ~email ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_email_notification ?id
    ?invitation_message ?invite ?timeouts ~account_id ~detector_id
    ~email __id =
  let (r : _ Tf_core.resource) =
    make ?disable_email_notification ?id ?invitation_message ?invite
      ?timeouts ~account_id ~detector_id ~email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
