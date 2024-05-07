(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type revocation_record = {
  revocation_effective_from : string prop;
  revoked_at : string prop;
  revoked_by : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : revocation_record) -> ()

let yojson_of_revocation_record =
  (function
   | {
       revocation_effective_from = v_revocation_effective_from;
       revoked_at = v_revoked_at;
       revoked_by = v_revoked_by;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revoked_by in
         ("revoked_by", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revoked_at in
         ("revoked_at", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_revocation_effective_from
         in
         ("revocation_effective_from", arg) :: bnds
       in
       `Assoc bnds
    : revocation_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_revocation_record

[@@@deriving.end]

type signature_validity_period = {
  type_ : string prop; [@key "type"]
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : signature_validity_period) -> ()

let yojson_of_signature_validity_period =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : signature_validity_period -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_signature_validity_period

[@@@deriving.end]

type aws_signer_signing_profile = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_signer_signing_profile) -> ()

let yojson_of_aws_signer_signing_profile =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_signer_signing_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_signer_signing_profile

[@@@deriving.end]

let aws_signer_signing_profile ?id ?tags ~name () :
    aws_signer_signing_profile =
  { id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  platform_display_name : string prop;
  platform_id : string prop;
  revocation_record : revocation_record list prop;
  signature_validity_period : signature_validity_period list prop;
  status : string prop;
  tags : (string * string) list prop;
  version : string prop;
  version_arn : string prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_signer_signing_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       platform_display_name =
         Prop.computed __type __id "platform_display_name";
       platform_id = Prop.computed __type __id "platform_id";
       revocation_record =
         Prop.computed __type __id "revocation_record";
       signature_validity_period =
         Prop.computed __type __id "signature_validity_period";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
       version_arn = Prop.computed __type __id "version_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_signer_signing_profile
        (aws_signer_signing_profile ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
