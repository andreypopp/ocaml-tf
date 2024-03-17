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

type t = {
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

let aws_chime_voice_connector_origination ?disabled ?id
    ~voice_connector_id ~route __resource_id =
  let __resource_type = "aws_chime_voice_connector_origination" in
  let __resource =
    ({ disabled; id; voice_connector_id; route }
      : aws_chime_voice_connector_origination)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_origination __resource);
  let __resource_attributes =
    ({
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       id = Prop.computed __resource_type __resource_id "id";
       voice_connector_id =
         Prop.computed __resource_type __resource_id
           "voice_connector_id";
     }
      : t)
  in
  __resource_attributes
