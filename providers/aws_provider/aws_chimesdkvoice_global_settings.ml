(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chimesdkvoice_global_settings__voice_connector = {
  cdr_bucket : string option; [@option]  (** cdr_bucket *)
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_global_settings__voice_connector *)

type aws_chimesdkvoice_global_settings = {
  voice_connector :
    aws_chimesdkvoice_global_settings__voice_connector list;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_global_settings *)

let aws_chimesdkvoice_global_settings ~voice_connector __resource_id
    =
  let __resource_type = "aws_chimesdkvoice_global_settings" in
  let __resource = { voice_connector } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_global_settings __resource);
  ()
