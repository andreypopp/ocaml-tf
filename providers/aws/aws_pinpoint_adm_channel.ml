(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_adm_channel = {
  application_id : string prop;  (** application_id *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_pinpoint_adm_channel *)

let aws_pinpoint_adm_channel ?enabled ?id ~application_id ~client_id
    ~client_secret () : aws_pinpoint_adm_channel =
  { application_id; client_id; client_secret; enabled; id }

type t = {
  application_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop;
  id : string prop;
}

let make ?enabled ?id ~application_id ~client_id ~client_secret __id
    =
  let __type = "aws_pinpoint_adm_channel" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_adm_channel
        (aws_pinpoint_adm_channel ?enabled ?id ~application_id
           ~client_id ~client_secret ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ~application_id ~client_id
    ~client_secret __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ~application_id ~client_id ~client_secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
