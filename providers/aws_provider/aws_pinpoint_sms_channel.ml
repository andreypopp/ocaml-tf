(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_sms_channel = {
  application_id : string prop;  (** application_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  sender_id : string prop option; [@option]  (** sender_id *)
  short_code : string prop option; [@option]  (** short_code *)
}
[@@deriving yojson_of]
(** aws_pinpoint_sms_channel *)

let aws_pinpoint_sms_channel ?enabled ?id ?sender_id ?short_code
    ~application_id __resource_id =
  let __resource_type = "aws_pinpoint_sms_channel" in
  let __resource =
    { application_id; enabled; id; sender_id; short_code }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_sms_channel __resource);
  ()
