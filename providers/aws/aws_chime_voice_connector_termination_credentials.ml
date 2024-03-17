(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_termination_credentials__credentials = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_termination_credentials__credentials *)

type aws_chime_voice_connector_termination_credentials = {
  id : string prop option; [@option]  (** id *)
  voice_connector_id : string prop;  (** voice_connector_id *)
  credentials :
    aws_chime_voice_connector_termination_credentials__credentials
    list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_termination_credentials *)

type t = { id : string prop; voice_connector_id : string prop }

let aws_chime_voice_connector_termination_credentials ?id
    ~voice_connector_id ~credentials __resource_id =
  let __resource_type =
    "aws_chime_voice_connector_termination_credentials"
  in
  let __resource =
    ({ id; voice_connector_id; credentials }
      : aws_chime_voice_connector_termination_credentials)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_termination_credentials
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       voice_connector_id =
         Prop.computed __resource_type __resource_id
           "voice_connector_id";
     }
      : t)
  in
  __resource_attributes
