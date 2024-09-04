(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_ciphertext = {
  context : string prop Tf_core.assoc option; [@option]
  id : string prop option; [@option]
  key_id : string prop;
  plaintext : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_ciphertext) -> ()

let yojson_of_aws_kms_ciphertext =
  (function
   | {
       context = v_context;
       id = v_id;
       key_id = v_key_id;
       plaintext = v_plaintext;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_plaintext in
         ("plaintext", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "context", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_ciphertext -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_ciphertext

[@@@deriving.end]

let aws_kms_ciphertext ?context ?id ~key_id ~plaintext () :
    aws_kms_ciphertext =
  { context; id; key_id; plaintext }

type t = {
  tf_name : string;
  ciphertext_blob : string prop;
  context : string Tf_core.assoc prop;
  id : string prop;
  key_id : string prop;
  plaintext : string prop;
}

let make ?context ?id ~key_id ~plaintext __id =
  let __type = "aws_kms_ciphertext" in
  let __attrs =
    ({
       tf_name = __id;
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
