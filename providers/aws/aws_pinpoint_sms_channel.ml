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
    ~application_id () : aws_pinpoint_sms_channel =
  { application_id; enabled; id; sender_id; short_code }

type t = {
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
  promotional_messages_per_second : float prop;
  sender_id : string prop;
  short_code : string prop;
  transactional_messages_per_second : float prop;
}

let register ?tf_module ?enabled ?id ?sender_id ?short_code
    ~application_id __resource_id =
  let __resource_type = "aws_pinpoint_sms_channel" in
  let __resource =
    aws_pinpoint_sms_channel ?enabled ?id ?sender_id ?short_code
      ~application_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_sms_channel __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       promotional_messages_per_second =
         Prop.computed __resource_type __resource_id
           "promotional_messages_per_second";
       sender_id =
         Prop.computed __resource_type __resource_id "sender_id";
       short_code =
         Prop.computed __resource_type __resource_id "short_code";
       transactional_messages_per_second =
         Prop.computed __resource_type __resource_id
           "transactional_messages_per_second";
     }
      : t)
  in
  __resource_attributes
