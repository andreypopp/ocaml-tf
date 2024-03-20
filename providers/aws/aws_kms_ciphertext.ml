(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?context ?id ~key_id ~plaintext __id =
  let __type = "aws_kms_ciphertext" in
  let __attrs =
    ({
       ciphertext_blob = Prop.computed __type __id "ciphertext_blob";
       context = Prop.computed __type __id "context";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       plaintext = Prop.computed __type __id "plaintext";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_ciphertext
        (aws_kms_ciphertext ?context ?id ~key_id ~plaintext ());
    attrs = __attrs;
  }

let register ?tf_module ?context ?id ~key_id ~plaintext __id =
  let (r : _ Tf_core.resource) =
    make ?context ?id ~key_id ~plaintext __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
