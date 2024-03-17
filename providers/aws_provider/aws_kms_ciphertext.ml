(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_ciphertext = {
  context : (string * string prop) list option; [@option]
      (** context *)
  id : string prop option; [@option]  (** id *)
  key_id : string prop;  (** key_id *)
  plaintext : string prop;  (** plaintext *)
}
[@@deriving yojson_of]
(** aws_kms_ciphertext *)

let aws_kms_ciphertext ?context ?id ~key_id ~plaintext __resource_id
    =
  let __resource_type = "aws_kms_ciphertext" in
  let __resource = { context; id; key_id; plaintext } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_ciphertext __resource);
  ()
