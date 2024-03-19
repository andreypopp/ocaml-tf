(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~voice_connector_id ~credentials
    __resource_id =
  let __resource_type =
    "aws_chime_voice_connector_termination_credentials"
  in
  let __resource =
    aws_chime_voice_connector_termination_credentials ?id
      ~voice_connector_id ~credentials ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
