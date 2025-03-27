(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_approle_auth_backend_role_secret_id = {
  backend : string prop option; [@option]
  cidr_list : string prop list option; [@option]
  id : string prop option; [@option]
  metadata : string prop option; [@option]
  namespace : string prop option; [@option]
  num_uses : float prop option; [@option]
  role_name : string prop;
  secret_id : string prop option; [@option]
  ttl : float prop option; [@option]
  with_wrapped_accessor : bool prop option; [@option]
  wrapping_ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_approle_auth_backend_role_secret_id) -> ()

let yojson_of_vault_approle_auth_backend_role_secret_id =
  (function
   | {
       backend = v_backend;
       cidr_list = v_cidr_list;
       id = v_id;
       metadata = v_metadata;
       namespace = v_namespace;
       num_uses = v_num_uses;
       role_name = v_role_name;
       secret_id = v_secret_id;
       ttl = v_ttl;
       with_wrapped_accessor = v_with_wrapped_accessor;
       wrapping_ttl = v_wrapping_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_wrapping_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "wrapping_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_with_wrapped_accessor with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "with_wrapped_accessor", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_secret_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role_name in
       ("role_name", arg) :: bnds
     in
     let bnds =
       match v_num_uses with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "num_uses", arg in
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
       match v_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "metadata", arg in
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
       match v_cidr_list with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "cidr_list", arg in
         bnd :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_approle_auth_backend_role_secret_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_approle_auth_backend_role_secret_id

[@@@deriving.end]

let vault_approle_auth_backend_role_secret_id ?backend ?cidr_list ?id ?metadata ?namespace ?num_uses ?secret_id ?ttl
  ?with_wrapped_accessor ?wrapping_ttl ~role_name () =
  ({
     backend;
     cidr_list;
     id;
     metadata;
     namespace;
     num_uses;
     role_name;
     secret_id;
     ttl;
     with_wrapped_accessor;
     wrapping_ttl;
   }
    : vault_approle_auth_backend_role_secret_id)

type t = {
  tf_name : string;
  accessor : string prop;
  backend : string prop;
  cidr_list : string list prop;
  id : string prop;
  metadata : string prop;
  namespace : string prop;
  num_uses : float prop;
  role_name : string prop;
  secret_id : string prop;
  ttl : float prop;
  with_wrapped_accessor : bool prop;
  wrapping_accessor : string prop;
  wrapping_token : string prop;
  wrapping_ttl : string prop;
}

let make ?backend ?cidr_list ?id ?metadata ?namespace ?num_uses ?secret_id ?ttl ?with_wrapped_accessor ?wrapping_ttl
  ~role_name __id =
  let __type = "vault_approle_auth_backend_role_secret_id" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       backend = Prop.computed __type __id "backend";
       cidr_list = Prop.computed __type __id "cidr_list";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       namespace = Prop.computed __type __id "namespace";
       num_uses = Prop.computed __type __id "num_uses";
       role_name = Prop.computed __type __id "role_name";
       secret_id = Prop.computed __type __id "secret_id";
       ttl = Prop.computed __type __id "ttl";
       with_wrapped_accessor = Prop.computed __type __id "with_wrapped_accessor";
       wrapping_accessor = Prop.computed __type __id "wrapping_accessor";
       wrapping_token = Prop.computed __type __id "wrapping_token";
       wrapping_ttl = Prop.computed __type __id "wrapping_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_approle_auth_backend_role_secret_id
        (vault_approle_auth_backend_role_secret_id ?backend ?cidr_list ?id ?metadata ?namespace ?num_uses ?secret_id
           ?ttl ?with_wrapped_accessor ?wrapping_ttl ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?cidr_list ?id ?metadata ?namespace ?num_uses ?secret_id ?ttl ?with_wrapped_accessor
  ?wrapping_ttl ~role_name __id =
  let (r : _ Tf_core.resource) =
    make ?backend ?cidr_list ?id ?metadata ?namespace ?num_uses ?secret_id ?ttl ?with_wrapped_accessor ?wrapping_ttl
      ~role_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
