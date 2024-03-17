(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_pinpoint_email_channel = {
  application_id : string;  (** application_id *)
  configuration_set : string option; [@option]
      (** configuration_set *)
  enabled : bool option; [@option]  (** enabled *)
  from_address : string;  (** from_address *)
  identity : string;  (** identity *)
  role_arn : string option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_pinpoint_email_channel *)

let aws_pinpoint_email_channel ?configuration_set ?enabled ?role_arn
    ~application_id ~from_address ~identity __resource_id =
  let __resource_type = "aws_pinpoint_email_channel" in
  let __resource =
    {
      application_id;
      configuration_set;
      enabled;
      from_address;
      identity;
      role_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_email_channel __resource);
  ()
