(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connector = {
  priority : float prop;  (** priority *)
  voice_connector_id : string prop;  (** voice_connector_id *)
}
[@@deriving yojson_of]
(** connector *)

type aws_chime_voice_connector_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  connector : connector list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_group *)

let connector ~priority ~voice_connector_id () : connector =
  { priority; voice_connector_id }

let aws_chime_voice_connector_group ?id ~name ~connector () :
    aws_chime_voice_connector_group =
  { id; name; connector }

type t = { id : string prop; name : string prop }

let make ?id ~name ~connector __id =
  let __type = "aws_chime_voice_connector_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector_group
        (aws_chime_voice_connector_group ?id ~name ~connector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~connector __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~connector __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
