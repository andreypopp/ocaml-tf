(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_member__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_guardduty_member__timeouts *)

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
  timeouts : aws_guardduty_member__timeouts option;
}
[@@deriving yojson_of]
(** aws_guardduty_member *)

let aws_guardduty_member ?disable_email_notification ?id
    ?invitation_message ?invite ?timeouts ~account_id ~detector_id
    ~email __resource_id =
  let __resource_type = "aws_guardduty_member" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_member __resource);
  ()
