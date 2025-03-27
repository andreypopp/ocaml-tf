(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_auth_backend_identity_whitelist = {
  backend : string prop option; [@option]
  disable_periodic_tidy : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  safety_buffer : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_auth_backend_identity_whitelist) -> ()

let yojson_of_vault_aws_auth_backend_identity_whitelist =
  (function
   | {
       backend = v_backend;
       disable_periodic_tidy = v_disable_periodic_tidy;
       id = v_id;
       namespace = v_namespace;
       safety_buffer = v_safety_buffer;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_safety_buffer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "safety_buffer", arg in
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
       match v_disable_periodic_tidy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_periodic_tidy", arg in
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
    : vault_aws_auth_backend_identity_whitelist -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_auth_backend_identity_whitelist

[@@@deriving.end]

let vault_aws_auth_backend_identity_whitelist ?backend ?disable_periodic_tidy ?id ?namespace ?safety_buffer () =
  ({ backend; disable_periodic_tidy; id; namespace; safety_buffer } : vault_aws_auth_backend_identity_whitelist)

type t = {
  tf_name : string;
  backend : string prop;
  disable_periodic_tidy : bool prop;
  id : string prop;
  namespace : string prop;
  safety_buffer : float prop;
}

let make ?backend ?disable_periodic_tidy ?id ?namespace ?safety_buffer __id =
  let __type = "vault_aws_auth_backend_identity_whitelist" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       disable_periodic_tidy = Prop.computed __type __id "disable_periodic_tidy";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       safety_buffer = Prop.computed __type __id "safety_buffer";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_auth_backend_identity_whitelist
        (vault_aws_auth_backend_identity_whitelist ?backend ?disable_periodic_tidy ?id ?namespace ?safety_buffer ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?disable_periodic_tidy ?id ?namespace ?safety_buffer __id =
  let (r : _ Tf_core.resource) = make ?backend ?disable_periodic_tidy ?id ?namespace ?safety_buffer __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
