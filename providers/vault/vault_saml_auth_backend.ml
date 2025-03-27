(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_saml_auth_backend = {
  acs_urls : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  default_role : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  entity_id : string prop;
  id : string prop option; [@option]
  idp_cert : string prop option; [@option]
  idp_entity_id : string prop option; [@option]
  idp_metadata_url : string prop option; [@option]
  idp_sso_url : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  verbose_logging : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_saml_auth_backend) -> ()

let yojson_of_vault_saml_auth_backend =
  (function
   | {
       acs_urls = v_acs_urls;
       default_role = v_default_role;
       disable_remount = v_disable_remount;
       entity_id = v_entity_id;
       id = v_id;
       idp_cert = v_idp_cert;
       idp_entity_id = v_idp_entity_id;
       idp_metadata_url = v_idp_metadata_url;
       idp_sso_url = v_idp_sso_url;
       namespace = v_namespace;
       path = v_path;
       verbose_logging = v_verbose_logging;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_verbose_logging with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "verbose_logging", arg in
         bnd :: bnds
     in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
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
       match v_idp_sso_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "idp_sso_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_idp_metadata_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "idp_metadata_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_idp_entity_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "idp_entity_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_idp_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "idp_cert", arg in
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
       let arg = yojson_of_prop yojson_of_string v_entity_id in
       ("entity_id", arg) :: bnds
     in
     let bnds =
       match v_disable_remount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_remount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_role with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "default_role", arg in
         bnd :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_acs_urls then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_acs_urls in
         let bnd = "acs_urls", arg in
         bnd :: bnds)
     in
     `Assoc bnds
    : vault_saml_auth_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_saml_auth_backend

[@@@deriving.end]

let vault_saml_auth_backend ?default_role ?disable_remount ?id ?idp_cert ?idp_entity_id ?idp_metadata_url ?idp_sso_url
  ?namespace ?path ?verbose_logging ~acs_urls ~entity_id () =
  ({
     acs_urls;
     default_role;
     disable_remount;
     entity_id;
     id;
     idp_cert;
     idp_entity_id;
     idp_metadata_url;
     idp_sso_url;
     namespace;
     path;
     verbose_logging;
   }
    : vault_saml_auth_backend)

type t = {
  tf_name : string;
  acs_urls : string list prop;
  default_role : string prop;
  disable_remount : bool prop;
  entity_id : string prop;
  id : string prop;
  idp_cert : string prop;
  idp_entity_id : string prop;
  idp_metadata_url : string prop;
  idp_sso_url : string prop;
  namespace : string prop;
  path : string prop;
  verbose_logging : bool prop;
}

let make ?default_role ?disable_remount ?id ?idp_cert ?idp_entity_id ?idp_metadata_url ?idp_sso_url ?namespace ?path
  ?verbose_logging ~acs_urls ~entity_id __id =
  let __type = "vault_saml_auth_backend" in
  let __attrs =
    ({
       tf_name = __id;
       acs_urls = Prop.computed __type __id "acs_urls";
       default_role = Prop.computed __type __id "default_role";
       disable_remount = Prop.computed __type __id "disable_remount";
       entity_id = Prop.computed __type __id "entity_id";
       id = Prop.computed __type __id "id";
       idp_cert = Prop.computed __type __id "idp_cert";
       idp_entity_id = Prop.computed __type __id "idp_entity_id";
       idp_metadata_url = Prop.computed __type __id "idp_metadata_url";
       idp_sso_url = Prop.computed __type __id "idp_sso_url";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       verbose_logging = Prop.computed __type __id "verbose_logging";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_saml_auth_backend
        (vault_saml_auth_backend ?default_role ?disable_remount ?id ?idp_cert ?idp_entity_id ?idp_metadata_url
           ?idp_sso_url ?namespace ?path ?verbose_logging ~acs_urls ~entity_id ());
    attrs = __attrs;
  }

let register ?tf_module ?default_role ?disable_remount ?id ?idp_cert ?idp_entity_id ?idp_metadata_url ?idp_sso_url
  ?namespace ?path ?verbose_logging ~acs_urls ~entity_id __id =
  let (r : _ Tf_core.resource) =
    make ?default_role ?disable_remount ?id ?idp_cert ?idp_entity_id ?idp_metadata_url ?idp_sso_url ?namespace ?path
      ?verbose_logging ~acs_urls ~entity_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
