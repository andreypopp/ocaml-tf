(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_cert_metadata = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
  serial : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_cert_metadata) -> ()

let yojson_of_vault_pki_secret_backend_cert_metadata =
  (function
   | { id = v_id; namespace = v_namespace; path = v_path; serial = v_serial } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_serial in
       ("serial", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
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
     `Assoc bnds
    : vault_pki_secret_backend_cert_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_cert_metadata

[@@@deriving.end]

let vault_pki_secret_backend_cert_metadata ?id ?namespace ~path ~serial () =
  ({ id; namespace; path; serial } : vault_pki_secret_backend_cert_metadata)

type t = {
  tf_name : string;
  cert_metadata : string prop;
  expiration : string prop;
  id : string prop;
  issuer_id : string prop;
  namespace : string prop;
  path : string prop;
  role : string prop;
  serial : string prop;
  serial_number : string prop;
}

let make ?id ?namespace ~path ~serial __id =
  let __type = "vault_pki_secret_backend_cert_metadata" in
  let __attrs =
    ({
       tf_name = __id;
       cert_metadata = Prop.computed __type __id "cert_metadata";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
       issuer_id = Prop.computed __type __id "issuer_id";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       role = Prop.computed __type __id "role";
       serial = Prop.computed __type __id "serial";
       serial_number = Prop.computed __type __id "serial_number";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_cert_metadata
        (vault_pki_secret_backend_cert_metadata ?id ?namespace ~path ~serial ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~path ~serial __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~path ~serial __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
