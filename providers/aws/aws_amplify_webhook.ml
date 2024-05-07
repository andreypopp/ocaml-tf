(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_amplify_webhook = {
  app_id : string prop;
  branch_name : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_amplify_webhook) -> ()

let yojson_of_aws_amplify_webhook =
  (function
   | {
       app_id = v_app_id;
       branch_name = v_branch_name;
       description = v_description;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_amplify_webhook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_amplify_webhook

[@@@deriving.end]

let aws_amplify_webhook ?description ?id ~app_id ~branch_name () :
    aws_amplify_webhook =
  { app_id; branch_name; description; id }

type t = {
  tf_name : string;
  app_id : string prop;
  arn : string prop;
  branch_name : string prop;
  description : string prop;
  id : string prop;
  url : string prop;
}

let make ?description ?id ~app_id ~branch_name __id =
  let __type = "aws_amplify_webhook" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       arn = Prop.computed __type __id "arn";
       branch_name = Prop.computed __type __id "branch_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_amplify_webhook
        (aws_amplify_webhook ?description ?id ~app_id ~branch_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~app_id ~branch_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~app_id ~branch_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
