(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?enabled ?id ?sender_id ?short_code ~application_id __id =
  let __type = "aws_pinpoint_sms_channel" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       promotional_messages_per_second =
         Prop.computed __type __id "promotional_messages_per_second";
       sender_id = Prop.computed __type __id "sender_id";
       short_code = Prop.computed __type __id "short_code";
       transactional_messages_per_second =
         Prop.computed __type __id
           "transactional_messages_per_second";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_sms_channel
        (aws_pinpoint_sms_channel ?enabled ?id ?sender_id ?short_code
           ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?sender_id ?short_code
    ~application_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?sender_id ?short_code ~application_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
