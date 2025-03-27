(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_audit_request_header = {
  hmac : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_audit_request_header) -> ()

let yojson_of_vault_audit_request_header =
  (function
   | { hmac = v_hmac; id = v_id; name = v_name; namespace = v_namespace } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
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
     let bnds =
       match v_hmac with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "hmac", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_audit_request_header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_audit_request_header

[@@@deriving.end]

let vault_audit_request_header ?hmac ?id ?namespace ~name () =
  ({ hmac; id; name; namespace } : vault_audit_request_header)

type t = {
  tf_name : string;
  hmac : bool prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
}

let make ?hmac ?id ?namespace ~name __id =
  let __type = "vault_audit_request_header" in
  let __attrs =
    ({
       tf_name = __id;
       hmac = Prop.computed __type __id "hmac";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_audit_request_header (vault_audit_request_header ?hmac ?id ?namespace ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?hmac ?id ?namespace ~name __id =
  let (r : _ Tf_core.resource) = make ?hmac ?id ?namespace ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
