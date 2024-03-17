(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ivs_playback_key_pair__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ivs_playback_key_pair__timeouts *)

type aws_ivs_playback_key_pair = {
  public_key : string;  (** public_key *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_ivs_playback_key_pair__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_playback_key_pair *)

let aws_ivs_playback_key_pair ?tags ?timeouts ~public_key
    __resource_id =
  let __resource_type = "aws_ivs_playback_key_pair" in
  let __resource = { public_key; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivs_playback_key_pair __resource);
  ()
