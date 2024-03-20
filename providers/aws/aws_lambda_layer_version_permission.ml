(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_layer_version_permission = {
  action : string prop;  (** action *)
  id : string prop option; [@option]  (** id *)
  layer_name : string prop;  (** layer_name *)
  organization_id : string prop option; [@option]
      (** organization_id *)
  principal : string prop;  (** principal *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  statement_id : string prop;  (** statement_id *)
  version_number : float prop;  (** version_number *)
}
[@@deriving yojson_of]
(** aws_lambda_layer_version_permission *)

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
