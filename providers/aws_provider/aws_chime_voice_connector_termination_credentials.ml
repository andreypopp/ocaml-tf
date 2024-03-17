(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_chime_voice_connector_termination_credentials__credentials = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_termination_credentials__credentials *)

type aws_chime_voice_connector_termination_credentials = {
  voice_connector_id : string;  (** voice_connector_id *)
  credentials :
    aws_chime_voice_connector_termination_credentials__credentials
    list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_termination_credentials *)

let aws_chime_voice_connector_termination_credentials
    ~voice_connector_id ~credentials __resource_id =
  let __resource_type =
    "aws_chime_voice_connector_termination_credentials"
  in
  let __resource = { voice_connector_id; credentials } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_termination_credentials
       __resource);
  ()
