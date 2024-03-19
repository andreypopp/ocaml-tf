(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type voice_connector = {
  cdr_bucket : string prop option; [@option]  (** cdr_bucket *)
}
[@@deriving yojson_of]
(** voice_connector *)

type aws_chimesdkvoice_global_settings = {
  id : string prop option; [@option]  (** id *)
  voice_connector : voice_connector list;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_global_settings *)

let voice_connector ?cdr_bucket () : voice_connector = { cdr_bucket }

let aws_chimesdkvoice_global_settings ?id ~voice_connector () :
    aws_chimesdkvoice_global_settings =
  { id; voice_connector }

type t = { id : string prop }

let register ?tf_module ?id ~voice_connector __resource_id =
  let __resource_type = "aws_chimesdkvoice_global_settings" in
  let __resource =
    aws_chimesdkvoice_global_settings ?id ~voice_connector ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_global_settings __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
