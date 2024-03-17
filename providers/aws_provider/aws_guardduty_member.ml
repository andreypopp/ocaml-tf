(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_guardduty_member__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_guardduty_member__timeouts *)

type aws_guardduty_member = {
  account_id : string;  (** account_id *)
  detector_id : string;  (** detector_id *)
  disable_email_notification : bool option; [@option]
      (** disable_email_notification *)
  email : string;  (** email *)
  invitation_message : string option; [@option]
      (** invitation_message *)
  invite : bool option; [@option]  (** invite *)
  timeouts : aws_guardduty_member__timeouts option;
}
[@@deriving yojson_of]
(** aws_guardduty_member *)

let aws_guardduty_member ?disable_email_notification
    ?invitation_message ?invite ?timeouts ~account_id ~detector_id
    ~email __resource_id =
  let __resource_type = "aws_guardduty_member" in
  let __resource =
    {
      account_id;
      detector_id;
      disable_email_notification;
      email;
      invitation_message;
      invite;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_member __resource);
  ()
