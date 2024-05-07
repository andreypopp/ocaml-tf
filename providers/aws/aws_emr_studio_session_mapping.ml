(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_emr_studio_session_mapping = {
  id : string prop option; [@option]
  identity_id : string prop option; [@option]
  identity_name : string prop option; [@option]
  identity_type : string prop;
  session_policy_arn : string prop;
  studio_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_studio_session_mapping) -> ()

let yojson_of_aws_emr_studio_session_mapping =
  (function
   | {
       id = v_id;
       identity_id = v_identity_id;
       identity_name = v_identity_name;
       identity_type = v_identity_type;
       session_policy_arn = v_session_policy_arn;
       studio_id = v_studio_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_studio_id in
         ("studio_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_session_policy_arn
         in
         ("session_policy_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identity_type in
         ("identity_type", arg) :: bnds
       in
       let bnds =
         match v_identity_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_id", arg in
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
    : aws_emr_studio_session_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_studio_session_mapping

[@@@deriving.end]

let aws_emr_studio_session_mapping ?id ?identity_id ?identity_name
    ~identity_type ~session_policy_arn ~studio_id () :
    aws_emr_studio_session_mapping =
  {
    id;
    identity_id;
    identity_name;
    identity_type;
    session_policy_arn;
    studio_id;
  }

type t = {
  tf_name : string;
  id : string prop;
  identity_id : string prop;
  identity_name : string prop;
  identity_type : string prop;
  session_policy_arn : string prop;
  studio_id : string prop;
}

let make ?id ?identity_id ?identity_name ~identity_type
    ~session_policy_arn ~studio_id __id =
  let __type = "aws_emr_studio_session_mapping" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       identity_name = Prop.computed __type __id "identity_name";
       identity_type = Prop.computed __type __id "identity_type";
       session_policy_arn =
         Prop.computed __type __id "session_policy_arn";
       studio_id = Prop.computed __type __id "studio_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_studio_session_mapping
        (aws_emr_studio_session_mapping ?id ?identity_id
           ?identity_name ~identity_type ~session_policy_arn
           ~studio_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?identity_id ?identity_name
    ~identity_type ~session_policy_arn ~studio_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?identity_id ?identity_name ~identity_type
      ~session_policy_arn ~studio_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
