(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_key_pair = {
  pgp_key : string option; [@option]  (** pgp_key *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_lightsail_key_pair *)

let aws_lightsail_key_pair ?pgp_key ?tags __resource_id =
  let __resource_type = "aws_lightsail_key_pair" in
  let __resource = { pgp_key; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_key_pair __resource);
  ()
