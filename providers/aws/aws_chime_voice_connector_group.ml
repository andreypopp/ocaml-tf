(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~name ~connector __resource_id =
  let __resource_type = "aws_chime_voice_connector_group" in
  let __resource =
    aws_chime_voice_connector_group ?id ~name ~connector ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
