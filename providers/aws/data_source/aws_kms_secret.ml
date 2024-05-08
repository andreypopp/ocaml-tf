(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secret = {
  context : (string * string prop) list option; [@option]
  grant_tokens : string prop list option; [@option]
  name : string prop;
  payload : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret) -> ()

let yojson_of_secret =
  (function
   | {
       context = v_context;
       grant_tokens = v_grant_tokens;
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

type aws_kms_secret = {
  id : string prop option; [@option]
  secret : secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_secret) -> ()

let yojson_of_aws_kms_secret =
  (function
   | { id = v_id; secret = v_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg = (yojson_of_list yojson_of_secret) v_secret in
           let bnd = "secret", arg in
           bnd :: bnds
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
    : aws_kms_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_secret

[@@@deriving.end]

let secret ?context ?grant_tokens ~name ~payload () : secret =
  { context; grant_tokens; name; payload }

let aws_kms_secret ?id ~secret () : aws_kms_secret = { id; secret }

type t = { tf_name : string; id : string prop }

let make ?id ~secret __id =
  let __type = "aws_kms_secret" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_kms_secret (aws_kms_secret ?id ~secret ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~secret __id =
  let (r : _ Tf_core.resource) = make ?id ~secret __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
