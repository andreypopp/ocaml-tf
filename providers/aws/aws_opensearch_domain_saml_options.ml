(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type saml_options__idp = {
  entity_id : string prop;
  metadata_content : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saml_options__idp) -> ()

let yojson_of_saml_options__idp =
  (function
   | {
       entity_id = v_entity_id;
       metadata_content = v_metadata_content;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metadata_content
         in
         ("metadata_content", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_id in
         ("entity_id", arg) :: bnds
       in
       `Assoc bnds
    : saml_options__idp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saml_options__idp

[@@@deriving.end]

type saml_options = {
  enabled : bool prop option; [@option]
  master_backend_role : string prop option; [@option]
  master_user_name : string prop option; [@option]
  roles_key : string prop option; [@option]
  session_timeout_minutes : float prop option; [@option]
  subject_key : string prop option; [@option]
  idp : saml_options__idp list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saml_options) -> ()

let yojson_of_saml_options =
  (function
   | {
       enabled = v_enabled;
       master_backend_role = v_master_backend_role;
       master_user_name = v_master_user_name;
       roles_key = v_roles_key;
       session_timeout_minutes = v_session_timeout_minutes;
       subject_key = v_subject_key;
       idp = v_idp;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_saml_options__idp v_idp
         in
         ("idp", arg) :: bnds
       in
       let bnds =
         match v_subject_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_timeout_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_timeout_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_roles_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "roles_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_user_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_backend_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_backend_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : saml_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saml_options

[@@@deriving.end]

type timeouts = {
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_opensearch_domain_saml_options = {
  domain_name : string prop;
  id : string prop option; [@option]
  saml_options : saml_options list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearch_domain_saml_options) -> ()

let yojson_of_aws_opensearch_domain_saml_options =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       saml_options = v_saml_options;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_saml_options v_saml_options
         in
         ("saml_options", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_opensearch_domain_saml_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearch_domain_saml_options

[@@@deriving.end]

let saml_options__idp ~entity_id ~metadata_content () :
    saml_options__idp =
  { entity_id; metadata_content }

let saml_options ?enabled ?master_backend_role ?master_user_name
    ?roles_key ?session_timeout_minutes ?subject_key ?(idp = []) () :
    saml_options =
  {
    enabled;
    master_backend_role;
    master_user_name;
    roles_key;
    session_timeout_minutes;
    subject_key;
    idp;
  }

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_opensearch_domain_saml_options ?id ?(saml_options = [])
    ?timeouts ~domain_name () : aws_opensearch_domain_saml_options =
  { domain_name; id; saml_options; timeouts }

type t = {
  tf_name : string;
  domain_name : string prop;
  id : string prop;
}

let make ?id ?(saml_options = []) ?timeouts ~domain_name __id =
  let __type = "aws_opensearch_domain_saml_options" in
  let __attrs =
    ({
       tf_name = __id;
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_domain_saml_options
        (aws_opensearch_domain_saml_options ?id ~saml_options
           ?timeouts ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(saml_options = []) ?timeouts
    ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~saml_options ?timeouts ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
