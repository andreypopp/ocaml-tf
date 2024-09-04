(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_service_linked_role = {
  aws_service_name : string prop;
  custom_suffix : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_service_linked_role) -> ()

let yojson_of_aws_iam_service_linked_role =
  (function
   | {
       aws_service_name = v_aws_service_name;
       custom_suffix = v_custom_suffix;
       description = v_description;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_aws_service_name
         in
         ("aws_service_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_service_linked_role ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_service_linked_role

[@@@deriving.end]

let aws_iam_service_linked_role ?custom_suffix ?description ?id ?tags
    ?tags_all ~aws_service_name () : aws_iam_service_linked_role =
  {
    aws_service_name;
    custom_suffix;
    description;
    id;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  aws_service_name : string prop;
  create_date : string prop;
  custom_suffix : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  unique_id : string prop;
}

let make ?custom_suffix ?description ?id ?tags ?tags_all
    ~aws_service_name __id =
  let __type = "aws_iam_service_linked_role" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       aws_service_name =
         Prop.computed __type __id "aws_service_name";
       create_date = Prop.computed __type __id "create_date";
       custom_suffix = Prop.computed __type __id "custom_suffix";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_service_linked_role
        (aws_iam_service_linked_role ?custom_suffix ?description ?id
           ?tags ?tags_all ~aws_service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_suffix ?description ?id ?tags
    ?tags_all ~aws_service_name __id =
  let (r : _ Tf_core.resource) =
    make ?custom_suffix ?description ?id ?tags ?tags_all
      ~aws_service_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
