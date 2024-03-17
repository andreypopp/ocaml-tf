(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_origination__route = {
  host : string;  (** host *)
  port : float option; [@option]  (** port *)
  priority : float;  (** priority *)
  protocol : string;  (** protocol *)
  weight : float;  (** weight *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_origination__route *)

type aws_chime_voice_connector_origination = {
  disabled : bool option; [@option]  (** disabled *)
  id : string option; [@option]  (** id *)
  voice_connector_id : string;  (** voice_connector_id *)
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
