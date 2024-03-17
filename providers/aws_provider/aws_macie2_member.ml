(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_member__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_macie2_member__timeouts *)

type aws_macie2_member = {
  account_id : string;  (** account_id *)
  email : string;  (** email *)
  invitation_disable_email_notification : bool option; [@option]
      (** invitation_disable_email_notification *)
  invitation_message : string option; [@option]
      (** invitation_message *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_macie2_member__timeouts option;
}
[@@deriving yojson_of]
(** aws_macie2_member *)

let aws_macie2_member ?invitation_disable_email_notification
    ?invitation_message ?tags ?timeouts ~account_id ~email
    __resource_id =
  let __resource_type = "aws_macie2_member" in
  let __resource =
    {
      account_id;
      email;
      invitation_disable_email_notification;
      invitation_message;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_member __resource);
  ()
