(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_origination__route = {
  host : string prop;  (** host *)
  port : float prop option; [@option]  (** port *)
  priority : float prop;  (** priority *)
  protocol : string prop;  (** protocol *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_origination__route *)

type aws_chime_voice_connector_origination = {
  disabled : bool prop option; [@option]  (** disabled *)
  id : string prop option; [@option]  (** id *)
  voice_connector_id : string prop;  (** voice_connector_id *)
  route : aws_chime_voice_connector_origination__route list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_origination *)

let aws_chime_voice_connector_origination ?disabled ?id
    ~voice_connector_id ~route __resource_id =
  let __resource_type = "aws_chime_voice_connector_origination" in
  let __resource = { disabled; id; voice_connector_id; route } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_origination __resource);
  ()
