(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_public_key = {
  grant_tokens : string prop list option; [@option]
  id : string prop option; [@option]
  key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_public_key) -> ()

let yojson_of_aws_kms_public_key =
  (function
   | { grant_tokens = v_grant_tokens; id = v_id; key_id = v_key_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_grant_tokens with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "grant_tokens", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_public_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_public_key

[@@@deriving.end]

let aws_kms_public_key ?grant_tokens ?id ~key_id () :
    aws_kms_public_key =
  { grant_tokens; id; key_id }

type t = {
  tf_name : string;
  arn : string prop;
  customer_master_key_spec : string prop;
  encryption_algorithms : string list prop;
  grant_tokens : string list prop;
  id : string prop;
  key_id : string prop;
  key_usage : string prop;
  public_key : string prop;
  public_key_pem : string prop;
  signing_algorithms : string list prop;
}

let make ?grant_tokens ?id ~key_id __id =
  let __type = "aws_kms_public_key" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       customer_master_key_spec =
         Prop.computed __type __id "customer_master_key_spec";
       encryption_algorithms =
         Prop.computed __type __id "encryption_algorithms";
       grant_tokens = Prop.computed __type __id "grant_tokens";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       key_usage = Prop.computed __type __id "key_usage";
       public_key = Prop.computed __type __id "public_key";
       public_key_pem = Prop.computed __type __id "public_key_pem";
       signing_algorithms =
         Prop.computed __type __id "signing_algorithms";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_public_key
        (aws_kms_public_key ?grant_tokens ?id ~key_id ());
    attrs = __attrs;
  }

let register ?tf_module ?grant_tokens ?id ~key_id __id =
  let (r : _ Tf_core.resource) =
    make ?grant_tokens ?id ~key_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
