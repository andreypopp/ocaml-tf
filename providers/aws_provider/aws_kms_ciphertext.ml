(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_ciphertext = {
  context : (string * string) list option; [@option]  (** context *)
  key_id : string;  (** key_id *)
  plaintext : string;  (** plaintext *)
}
[@@deriving yojson_of]
(** aws_kms_ciphertext *)

let aws_kms_ciphertext ?context ~key_id ~plaintext __resource_id =
  let __resource_type = "aws_kms_ciphertext" in
  let __resource = { context; key_id; plaintext } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_ciphertext __resource);
  ()
