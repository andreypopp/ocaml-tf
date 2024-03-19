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

let aws_kms_ciphertext ?context ?id ~key_id ~plaintext () :
    aws_kms_ciphertext =
  { context; id; key_id; plaintext }

type t = {
  ciphertext_blob : string prop;
  context : (string * string) list prop;
  id : string prop;
  key_id : string prop;
  plaintext : string prop;
}

let register ?tf_module ?context ?id ~key_id ~plaintext __resource_id
    =
  let __resource_type = "aws_kms_ciphertext" in
  let __resource =
    aws_kms_ciphertext ?context ?id ~key_id ~plaintext ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_ciphertext __resource);
  let __resource_attributes =
    ({
       ciphertext_blob =
         Prop.computed __resource_type __resource_id
           "ciphertext_blob";
       context =
         Prop.computed __resource_type __resource_id "context";
       id = Prop.computed __resource_type __resource_id "id";
       key_id = Prop.computed __resource_type __resource_id "key_id";
       plaintext =
         Prop.computed __resource_type __resource_id "plaintext";
     }
      : t)
  in
  __resource_attributes
