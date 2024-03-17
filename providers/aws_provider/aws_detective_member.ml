(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_detective_member = {
  account_id : string;  (** account_id *)
  disable_email_notification : bool option; [@option]
      (** disable_email_notification *)
  email_address : string;  (** email_address *)
  graph_arn : string;  (** graph_arn *)
  message : string option; [@option]  (** message *)
}
[@@deriving yojson_of]
(** aws_detective_member *)

let aws_detective_member ?disable_email_notification ?message
    ~account_id ~email_address ~graph_arn __resource_id =
  let __resource_type = "aws_detective_member" in
  let __resource =
    {
      account_id;
      disable_email_notification;
      email_address;
      graph_arn;
      message;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_member __resource);
  ()
