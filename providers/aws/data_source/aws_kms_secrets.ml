(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secret = {
  context : (string * string prop) list option; [@option]
  encryption_algorithm : string prop option; [@option]
  grant_tokens : string prop list option; [@option]
  key_id : string prop option; [@option]
  name : string prop;
  payload : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret) -> ()

let yojson_of_secret =
  (function
   | {
       context = v_context;
       encryption_algorithm = v_encryption_algorithm;
       grant_tokens = v_grant_tokens;
       key_id = v_key_id;
       name = v_name;
       payload = v_payload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_payload in
         ("payload", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_grant_tokens with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "grant_tokens", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "context", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret

[@@@deriving.end]

type aws_kms_secrets = {
  id : string prop option; [@option]
  secret : secret list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_secrets) -> ()

let yojson_of_aws_kms_secrets =
  (function
   | { id = v_id; secret = v_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_secret v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_secrets

[@@@deriving.end]

let secret ?context ?encryption_algorithm ?grant_tokens ?key_id ~name
    ~payload () : secret =
  {
    context;
    encryption_algorithm;
    grant_tokens;
    key_id;
    name;
    payload;
  }

let aws_kms_secrets ?id ~secret () : aws_kms_secrets = { id; secret }

type t = {
  tf_name : string;
  id : string prop;
  plaintext : (string * string) list prop;
}

let make ?id ~secret __id =
  let __type = "aws_kms_secrets" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       plaintext = Prop.computed __type __id "plaintext";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_kms_secrets (aws_kms_secrets ?id ~secret ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~secret __id =
  let (r : _ Tf_core.resource) = make ?id ~secret __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
