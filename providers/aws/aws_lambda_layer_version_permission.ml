(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_layer_version_permission = {
  action : string prop;
  id : string prop option; [@option]
  layer_name : string prop;
  organization_id : string prop option; [@option]
  principal : string prop;
  skip_destroy : bool prop option; [@option]
  statement_id : string prop;
  version_number : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_layer_version_permission) -> ()

let yojson_of_aws_lambda_layer_version_permission =
  (function
   | {
       action = v_action;
       id = v_id;
       layer_name = v_layer_name;
       organization_id = v_organization_id;
       principal = v_principal;
       skip_destroy = v_skip_destroy;
       statement_id = v_statement_id;
       version_number = v_version_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_version_number in
         ("version_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_statement_id in
         ("statement_id", arg) :: bnds
       in
       let bnds =
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         match v_organization_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_layer_name in
         ("layer_name", arg) :: bnds
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
    : aws_lambda_layer_version_permission ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_layer_version_permission

[@@@deriving.end]

let aws_lambda_layer_version_permission ?id ?organization_id
    ?skip_destroy ~action ~layer_name ~principal ~statement_id
    ~version_number () : aws_lambda_layer_version_permission =
  {
    action;
    id;
    layer_name;
    organization_id;
    principal;
    skip_destroy;
    statement_id;
    version_number;
  }

type t = {
  tf_name : string;
  action : string prop;
  id : string prop;
  layer_name : string prop;
  organization_id : string prop;
  policy : string prop;
  principal : string prop;
  revision_id : string prop;
  skip_destroy : bool prop;
  statement_id : string prop;
  version_number : float prop;
}

let make ?id ?organization_id ?skip_destroy ~action ~layer_name
    ~principal ~statement_id ~version_number __id =
  let __type = "aws_lambda_layer_version_permission" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       id = Prop.computed __type __id "id";
       layer_name = Prop.computed __type __id "layer_name";
       organization_id = Prop.computed __type __id "organization_id";
       policy = Prop.computed __type __id "policy";
       principal = Prop.computed __type __id "principal";
       revision_id = Prop.computed __type __id "revision_id";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       statement_id = Prop.computed __type __id "statement_id";
       version_number = Prop.computed __type __id "version_number";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_layer_version_permission
        (aws_lambda_layer_version_permission ?id ?organization_id
           ?skip_destroy ~action ~layer_name ~principal ~statement_id
           ~version_number ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?organization_id ?skip_destroy ~action
    ~layer_name ~principal ~statement_id ~version_number __id =
  let (r : _ Tf_core.resource) =
    make ?id ?organization_id ?skip_destroy ~action ~layer_name
      ~principal ~statement_id ~version_number __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
