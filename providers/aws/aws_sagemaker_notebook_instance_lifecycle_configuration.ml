(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_notebook_instance_lifecycle_configuration = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  on_create : string prop option; [@option]
  on_start : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_sagemaker_notebook_instance_lifecycle_configuration) ->
  ()

let yojson_of_aws_sagemaker_notebook_instance_lifecycle_configuration
    =
  (function
   | {
       id = v_id;
       name = v_name;
       on_create = v_on_create;
       on_start = v_on_start;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_on_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_create", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : aws_sagemaker_notebook_instance_lifecycle_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_sagemaker_notebook_instance_lifecycle_configuration

[@@@deriving.end]

let aws_sagemaker_notebook_instance_lifecycle_configuration ?id ?name
    ?on_create ?on_start () :
    aws_sagemaker_notebook_instance_lifecycle_configuration =
  { id; name; on_create; on_start }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  on_create : string prop;
  on_start : string prop;
}

let make ?id ?name ?on_create ?on_start __id =
  let __type =
    "aws_sagemaker_notebook_instance_lifecycle_configuration"
  in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       on_create = Prop.computed __type __id "on_create";
       on_start = Prop.computed __type __id "on_start";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_notebook_instance_lifecycle_configuration
        (aws_sagemaker_notebook_instance_lifecycle_configuration ?id
           ?name ?on_create ?on_start ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?on_create ?on_start __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?on_create ?on_start __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
