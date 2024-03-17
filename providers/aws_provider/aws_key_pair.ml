(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_key_pair = {
  public_key : string;  (** public_key *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_key_pair *)

let aws_key_pair ?tags ~public_key __resource_id =
  let __resource_type = "aws_key_pair" in
  let __resource = { public_key; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_key_pair __resource);
  ()
