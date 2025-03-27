(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_auth_backend_cert = {
  aws_public_cert : string prop;
  backend : string prop option; [@option]
  cert_name : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_auth_backend_cert) -> ()

let yojson_of_vault_aws_auth_backend_cert =
  (function
   | {
       aws_public_cert = v_aws_public_cert;
       backend = v_backend;
       cert_name = v_cert_name;
       id = v_id;
       namespace = v_namespace;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_type_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "type", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_cert_name in
       ("cert_name", arg) :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_aws_public_cert in
       ("aws_public_cert", arg) :: bnds
     in
     `Assoc bnds
    : vault_aws_auth_backend_cert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_auth_backend_cert

[@@@deriving.end]

let vault_aws_auth_backend_cert ?backend ?id ?namespace ?type_ ~aws_public_cert ~cert_name () =
  ({ aws_public_cert; backend; cert_name; id; namespace; type_ } : vault_aws_auth_backend_cert)

type t = {
  tf_name : string;
  aws_public_cert : string prop;
  backend : string prop;
  cert_name : string prop;
  id : string prop;
  namespace : string prop;
  type_ : string prop;
}

let make ?backend ?id ?namespace ?type_ ~aws_public_cert ~cert_name __id =
  let __type = "vault_aws_auth_backend_cert" in
  let __attrs =
    ({
       tf_name = __id;
       aws_public_cert = Prop.computed __type __id "aws_public_cert";
       backend = Prop.computed __type __id "backend";
       cert_name = Prop.computed __type __id "cert_name";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_auth_backend_cert
        (vault_aws_auth_backend_cert ?backend ?id ?namespace ?type_ ~aws_public_cert ~cert_name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?id ?namespace ?type_ ~aws_public_cert ~cert_name __id =
  let (r : _ Tf_core.resource) = make ?backend ?id ?namespace ?type_ ~aws_public_cert ~cert_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
