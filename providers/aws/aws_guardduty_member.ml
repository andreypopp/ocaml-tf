(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?disable_email_notification ?id
    ?invitation_message ?invite ?timeouts ~account_id ~detector_id
    ~email __resource_id =
  let __resource_type = "aws_guardduty_member" in
  let __resource =
    aws_guardduty_member ?disable_email_notification ?id
      ?invitation_message ?invite ?timeouts ~account_id ~detector_id
      ~email ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_member __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       detector_id =
         Prop.computed __resource_type __resource_id "detector_id";
       disable_email_notification =
         Prop.computed __resource_type __resource_id
           "disable_email_notification";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       invitation_message =
         Prop.computed __resource_type __resource_id
           "invitation_message";
       invite = Prop.computed __resource_type __resource_id "invite";
       relationship_status =
         Prop.computed __resource_type __resource_id
           "relationship_status";
     }
      : t)
  in
  __resource_attributes
