(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_secret_backend_static_role = {
  assume_role_arn : string prop option; [@option]
  assume_role_session_name : string prop option; [@option]
  backend : string prop option; [@option]
  external_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  rotation_period : float prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_secret_backend_static_role) -> ()

let yojson_of_vault_aws_secret_backend_static_role =
  (function
   | {
       assume_role_arn = v_assume_role_arn;
       assume_role_session_name = v_assume_role_session_name;
       backend = v_backend;
       external_id = v_external_id;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       rotation_period = v_rotation_period;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_username in
       ("username", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_float v_rotation_period in
       ("rotation_period", arg) :: bnds
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_external_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "external_id", arg in
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
     let bnds =
       match v_assume_role_session_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "assume_role_session_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_assume_role_arn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "assume_role_arn", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_aws_secret_backend_static_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_secret_backend_static_role

[@@@deriving.end]

let vault_aws_secret_backend_static_role ?assume_role_arn ?assume_role_session_name ?backend ?external_id ?id ?namespace
  ~name ~rotation_period ~username () =
  ({ assume_role_arn; assume_role_session_name; backend; external_id; id; name; namespace; rotation_period; username }
    : vault_aws_secret_backend_static_role)

type t = {
  tf_name : string;
  assume_role_arn : string prop;
  assume_role_session_name : string prop;
  backend : string prop;
  external_id : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  rotation_period : float prop;
  username : string prop;
}

let make ?assume_role_arn ?assume_role_session_name ?backend ?external_id ?id ?namespace ~name ~rotation_period
  ~username __id =
  let __type = "vault_aws_secret_backend_static_role" in
  let __attrs =
    ({
       tf_name = __id;
       assume_role_arn = Prop.computed __type __id "assume_role_arn";
       assume_role_session_name = Prop.computed __type __id "assume_role_session_name";
       backend = Prop.computed __type __id "backend";
       external_id = Prop.computed __type __id "external_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       rotation_period = Prop.computed __type __id "rotation_period";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_secret_backend_static_role
        (vault_aws_secret_backend_static_role ?assume_role_arn ?assume_role_session_name ?backend ?external_id ?id
           ?namespace ~name ~rotation_period ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?assume_role_arn ?assume_role_session_name ?backend ?external_id ?id ?namespace ~name
  ~rotation_period ~username __id =
  let (r : _ Tf_core.resource) =
    make ?assume_role_arn ?assume_role_session_name ?backend ?external_id ?id ?namespace ~name ~rotation_period
      ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
