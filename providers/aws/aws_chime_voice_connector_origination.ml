(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type route = {
  host : string prop;  (** host *)
  port : float prop option; [@option]  (** port *)
  priority : float prop;  (** priority *)
  protocol : string prop;  (** protocol *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** route *)

type aws_chime_voice_connector_origination = {
  disabled : bool prop option; [@option]  (** disabled *)
  id : string prop option; [@option]  (** id *)
  voice_connector_id : string prop;  (** voice_connector_id *)
  route : route list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_origination *)

let route ?port ~host ~priority ~protocol ~weight () : route =
  { host; port; priority; protocol; weight }

let aws_chime_voice_connector_origination ?disabled ?id
    ~voice_connector_id ~route () :
    aws_chime_voice_connector_origination =
  { disabled; id; voice_connector_id; route }

type t = {
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

let make ?disabled ?id ~voice_connector_id ~route __id =
  let __type = "aws_chime_voice_connector_origination" in
  let __attrs =
    ({
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       voice_connector_id =
         Prop.computed __type __id "voice_connector_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector_origination
        (aws_chime_voice_connector_origination ?disabled ?id
           ~voice_connector_id ~route ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?id ~voice_connector_id ~route __id
    =
  let (r : _ Tf_core.resource) =
    make ?disabled ?id ~voice_connector_id ~route __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
