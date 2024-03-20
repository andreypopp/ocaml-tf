(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_gcm_channel = {
  api_key : string prop;  (** api_key *)
  application_id : string prop;  (** application_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_pinpoint_gcm_channel *)

let aws_pinpoint_gcm_channel ?enabled ?id ~api_key ~application_id ()
    : aws_pinpoint_gcm_channel =
  { api_key; application_id; enabled; id }

type t = {
  api_key : string prop;
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
}

let make ?enabled ?id ~api_key ~application_id __id =
  let __type = "aws_pinpoint_gcm_channel" in
  let __attrs =
    ({
       api_key = Prop.computed __type __id "api_key";
       application_id = Prop.computed __type __id "application_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_gcm_channel
        (aws_pinpoint_gcm_channel ?enabled ?id ~api_key
           ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ~api_key ~application_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ~api_key ~application_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
