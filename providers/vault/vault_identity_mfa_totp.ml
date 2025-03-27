(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_mfa_totp = {
  algorithm : string prop option; [@option]
  digits : float prop option; [@option]
  id : string prop option; [@option]
  issuer : string prop;
  key_size : float prop option; [@option]
  max_validation_attempts : float prop option; [@option]
  namespace : string prop option; [@option]
  period : float prop option; [@option]
  qr_size : float prop option; [@option]
  skew : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_mfa_totp) -> ()

let yojson_of_vault_identity_mfa_totp =
  (function
   | {
       algorithm = v_algorithm;
       digits = v_digits;
       id = v_id;
       issuer = v_issuer;
       key_size = v_key_size;
       max_validation_attempts = v_max_validation_attempts;
       namespace = v_namespace;
       period = v_period;
       qr_size = v_qr_size;
       skew = v_skew;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_skew with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "skew", arg in
         bnd :: bnds
     in
     let bnds =
       match v_qr_size with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "qr_size", arg in
         bnd :: bnds
     in
     let bnds =
       match v_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_validation_attempts with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_validation_attempts", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_size with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "key_size", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_issuer in
       ("issuer", arg) :: bnds
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
       match v_digits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "digits", arg in
         bnd :: bnds
     in
     let bnds =
       match v_algorithm with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "algorithm", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_mfa_totp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_mfa_totp

[@@@deriving.end]

let vault_identity_mfa_totp ?algorithm ?digits ?id ?key_size ?max_validation_attempts ?namespace ?period ?qr_size ?skew
  ~issuer () =
  ({ algorithm; digits; id; issuer; key_size; max_validation_attempts; namespace; period; qr_size; skew }
    : vault_identity_mfa_totp)

type t = {
  tf_name : string;
  algorithm : string prop;
  digits : float prop;
  id : string prop;
  issuer : string prop;
  key_size : float prop;
  max_validation_attempts : float prop;
  method_id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  namespace_path : string prop;
  period : float prop;
  qr_size : float prop;
  skew : float prop;
  type_ : string prop;
  uuid : string prop;
}

let make ?algorithm ?digits ?id ?key_size ?max_validation_attempts ?namespace ?period ?qr_size ?skew ~issuer __id =
  let __type = "vault_identity_mfa_totp" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm = Prop.computed __type __id "algorithm";
       digits = Prop.computed __type __id "digits";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       key_size = Prop.computed __type __id "key_size";
       max_validation_attempts = Prop.computed __type __id "max_validation_attempts";
       method_id = Prop.computed __type __id "method_id";
       mount_accessor = Prop.computed __type __id "mount_accessor";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       namespace_id = Prop.computed __type __id "namespace_id";
       namespace_path = Prop.computed __type __id "namespace_path";
       period = Prop.computed __type __id "period";
       qr_size = Prop.computed __type __id "qr_size";
       skew = Prop.computed __type __id "skew";
       type_ = Prop.computed __type __id "type";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_mfa_totp
        (vault_identity_mfa_totp ?algorithm ?digits ?id ?key_size ?max_validation_attempts ?namespace ?period ?qr_size
           ?skew ~issuer ());
    attrs = __attrs;
  }

let register ?tf_module ?algorithm ?digits ?id ?key_size ?max_validation_attempts ?namespace ?period ?qr_size ?skew
  ~issuer __id =
  let (r : _ Tf_core.resource) =
    make ?algorithm ?digits ?id ?key_size ?max_validation_attempts ?namespace ?period ?qr_size ?skew ~issuer __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
