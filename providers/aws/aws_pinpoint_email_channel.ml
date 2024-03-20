(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_email_channel = {
  application_id : string prop;  (** application_id *)
  configuration_set : string prop option; [@option]
      (** configuration_set *)
  enabled : bool prop option; [@option]  (** enabled *)
  from_address : string prop;  (** from_address *)
  id : string prop option; [@option]  (** id *)
  identity : string prop;  (** identity *)
  role_arn : string prop option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_pinpoint_email_channel *)

let aws_pinpoint_email_channel ?configuration_set ?enabled ?id
    ?role_arn ~application_id ~from_address ~identity () :
    aws_pinpoint_email_channel =
  {
    application_id;
    configuration_set;
    enabled;
    from_address;
    id;
    identity;
    role_arn;
  }

type t = {
  application_id : string prop;
  configuration_set : string prop;
  enabled : bool prop;
  from_address : string prop;
  id : string prop;
  identity : string prop;
  messages_per_second : float prop;
  role_arn : string prop;
}

let make ?configuration_set ?enabled ?id ?role_arn ~application_id
    ~from_address ~identity __id =
  let __type = "aws_pinpoint_email_channel" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       configuration_set =
         Prop.computed __type __id "configuration_set";
       enabled = Prop.computed __type __id "enabled";
       from_address = Prop.computed __type __id "from_address";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       messages_per_second =
         Prop.computed __type __id "messages_per_second";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_email_channel
        (aws_pinpoint_email_channel ?configuration_set ?enabled ?id
           ?role_arn ~application_id ~from_address ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration_set ?enabled ?id ?role_arn
    ~application_id ~from_address ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?configuration_set ?enabled ?id ?role_arn ~application_id
      ~from_address ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
