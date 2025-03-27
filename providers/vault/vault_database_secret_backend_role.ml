(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_database_secret_backend_role = {
  backend : string prop;
  creation_statements : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  credential_config : string prop Tf_core.assoc option; [@option]
  credential_type : string prop option; [@option]
  db_name : string prop;
  default_ttl : float prop option; [@option]
  id : string prop option; [@option]
  max_ttl : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  renew_statements : string prop list option; [@option]
  revocation_statements : string prop list option; [@option]
  rollback_statements : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_database_secret_backend_role) -> ()

let yojson_of_vault_database_secret_backend_role =
  (function
   | {
       backend = v_backend;
       creation_statements = v_creation_statements;
       credential_config = v_credential_config;
       credential_type = v_credential_type;
       db_name = v_db_name;
       default_ttl = v_default_ttl;
       id = v_id;
       max_ttl = v_max_ttl;
       name = v_name;
       namespace = v_namespace;
       renew_statements = v_renew_statements;
       revocation_statements = v_revocation_statements;
       rollback_statements = v_rollback_statements;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_rollback_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "rollback_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_revocation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "revocation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_renew_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "renew_statements", arg in
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_ttl", arg in
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
       match v_default_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_db_name in
       ("db_name", arg) :: bnds
     in
     let bnds =
       match v_credential_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "credential_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_credential_config with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "credential_config", arg in
         bnd :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_creation_statements then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_creation_statements in
         let bnd = "creation_statements", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_database_secret_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_database_secret_backend_role

[@@@deriving.end]

let vault_database_secret_backend_role ?credential_config ?credential_type ?default_ttl ?id ?max_ttl ?namespace
  ?renew_statements ?revocation_statements ?rollback_statements ~backend ~creation_statements ~db_name ~name () =
  ({
     backend;
     creation_statements;
     credential_config;
     credential_type;
     db_name;
     default_ttl;
     id;
     max_ttl;
     name;
     namespace;
     renew_statements;
     revocation_statements;
     rollback_statements;
   }
    : vault_database_secret_backend_role)

type t = {
  tf_name : string;
  backend : string prop;
  creation_statements : string list prop;
  credential_config : string Tf_core.assoc prop;
  credential_type : string prop;
  db_name : string prop;
  default_ttl : float prop;
  id : string prop;
  max_ttl : float prop;
  name : string prop;
  namespace : string prop;
  renew_statements : string list prop;
  revocation_statements : string list prop;
  rollback_statements : string list prop;
}

let make ?credential_config ?credential_type ?default_ttl ?id ?max_ttl ?namespace ?renew_statements
  ?revocation_statements ?rollback_statements ~backend ~creation_statements ~db_name ~name __id =
  let __type = "vault_database_secret_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       creation_statements = Prop.computed __type __id "creation_statements";
       credential_config = Prop.computed __type __id "credential_config";
       credential_type = Prop.computed __type __id "credential_type";
       db_name = Prop.computed __type __id "db_name";
       default_ttl = Prop.computed __type __id "default_ttl";
       id = Prop.computed __type __id "id";
       max_ttl = Prop.computed __type __id "max_ttl";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       renew_statements = Prop.computed __type __id "renew_statements";
       revocation_statements = Prop.computed __type __id "revocation_statements";
       rollback_statements = Prop.computed __type __id "rollback_statements";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_database_secret_backend_role
        (vault_database_secret_backend_role ?credential_config ?credential_type ?default_ttl ?id ?max_ttl ?namespace
           ?renew_statements ?revocation_statements ?rollback_statements ~backend ~creation_statements ~db_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_config ?credential_type ?default_ttl ?id ?max_ttl ?namespace ?renew_statements
  ?revocation_statements ?rollback_statements ~backend ~creation_statements ~db_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?credential_config ?credential_type ?default_ttl ?id ?max_ttl ?namespace ?renew_statements
      ?revocation_statements ?rollback_statements ~backend ~creation_statements ~db_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
