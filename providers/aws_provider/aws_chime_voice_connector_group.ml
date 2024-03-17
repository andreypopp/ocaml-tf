(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_group__connector = {
  priority : float prop;  (** priority *)
  voice_connector_id : string prop;  (** voice_connector_id *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_group__connector *)

type aws_chime_voice_connector_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  connector : aws_chime_voice_connector_group__connector list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_group *)

let aws_chime_voice_connector_group ?id ~name ~connector
    __resource_id =
  let __resource_type = "aws_chime_voice_connector_group" in
  let __resource = { id; name; connector } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_group __resource);
  ()
