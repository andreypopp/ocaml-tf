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
  id : string option; [@option]  (** id *)
  invitation_disable_email_notification : bool option; [@option]
      (** invitation_disable_email_notification *)
  invitation_message : string option; [@option]
      (** invitation_message *)
  invite : bool option; [@option]  (** invite *)
  status : string option; [@option]  (** status *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_macie2_member__timeouts option;
}
[@@deriving yojson_of]
(** aws_macie2_member *)

let aws_macie2_member ?id ?invitation_disable_email_notification
    ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
    ~account_id ~email __resource_id =
  let __resource_type = "aws_macie2_member" in
  let __resource =
    {
      account_id;
      email;
      id;
      invitation_disable_email_notification;
      invitation_message;
      invite;
      status;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_member __resource);
  ()
