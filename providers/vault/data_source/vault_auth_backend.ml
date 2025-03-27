(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_auth_backend = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_auth_backend) -> ()

let yojson_of_vault_auth_backend =
  (function
   | { id = v_id; namespace = v_namespace; path = v_path } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
    : vault_auth_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_auth_backend

[@@@deriving.end]

let vault_auth_backend ?id ?namespace ~path () = ({ id; namespace; path } : vault_auth_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  id : string prop;
  listing_visibility : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  path : string prop;
  type_ : string prop;
}

let make ?id ?namespace ~path __id =
  let __type = "vault_auth_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       listing_visibility = Prop.computed __type __id "listing_visibility";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_auth_backend (vault_auth_backend ?id ?namespace ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~path __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~path __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
