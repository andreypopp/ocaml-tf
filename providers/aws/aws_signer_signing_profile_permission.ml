(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_signer_signing_profile_permission = {
  action : string prop;
  id : string prop option; [@option]
  principal : string prop;
  profile_name : string prop;
  profile_version : string prop option; [@option]
  statement_id : string prop option; [@option]
  statement_id_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_signer_signing_profile_permission) -> ()

let yojson_of_aws_signer_signing_profile_permission =
  (function
   | {
       action = v_action;
       id = v_id;
       principal = v_principal;
       profile_name = v_profile_name;
       profile_version = v_profile_version;
       statement_id = v_statement_id;
       statement_id_prefix = v_statement_id_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_statement_id_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_id_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statement_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_profile_name in
         ("profile_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : aws_signer_signing_profile_permission ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_signer_signing_profile_permission

[@@@deriving.end]

let aws_signer_signing_profile_permission ?id ?profile_version
    ?statement_id ?statement_id_prefix ~action ~principal
    ~profile_name () : aws_signer_signing_profile_permission =
  {
    action;
    id;
    principal;
    profile_name;
    profile_version;
    statement_id;
    statement_id_prefix;
  }

type t = {
  tf_name : string;
  action : string prop;
  id : string prop;
  principal : string prop;
  profile_name : string prop;
  profile_version : string prop;
  statement_id : string prop;
  statement_id_prefix : string prop;
}

let make ?id ?profile_version ?statement_id ?statement_id_prefix
    ~action ~principal ~profile_name __id =
  let __type = "aws_signer_signing_profile_permission" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       profile_name = Prop.computed __type __id "profile_name";
       profile_version = Prop.computed __type __id "profile_version";
       statement_id = Prop.computed __type __id "statement_id";
       statement_id_prefix =
         Prop.computed __type __id "statement_id_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_signer_signing_profile_permission
        (aws_signer_signing_profile_permission ?id ?profile_version
           ?statement_id ?statement_id_prefix ~action ~principal
           ~profile_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?profile_version ?statement_id
    ?statement_id_prefix ~action ~principal ~profile_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?profile_version ?statement_id ?statement_id_prefix
      ~action ~principal ~profile_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
