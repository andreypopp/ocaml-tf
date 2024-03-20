(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type credentials = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** credentials *)

type aws_chime_voice_connector_termination_credentials = {
  id : string prop option; [@option]  (** id *)
  voice_connector_id : string prop;  (** voice_connector_id *)
  credentials : credentials list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_termination_credentials *)

let credentials ~password ~username () : credentials =
  { password; username }

let aws_chime_voice_connector_termination_credentials ?id
    ~voice_connector_id ~credentials () :
    aws_chime_voice_connector_termination_credentials =
  { id; voice_connector_id; credentials }

type t = { id : string prop; voice_connector_id : string prop }

let make ?id ~voice_connector_id ~credentials __id =
  let __type = "aws_chime_voice_connector_termination_credentials" in
  let __attrs =
    ({
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
      yojson_of_aws_chime_voice_connector_termination_credentials
        (aws_chime_voice_connector_termination_credentials ?id
           ~voice_connector_id ~credentials ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~voice_connector_id ~credentials __id =
  let (r : _ Tf_core.resource) =
    make ?id ~voice_connector_id ~credentials __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
