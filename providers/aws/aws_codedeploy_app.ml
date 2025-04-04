(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codedeploy_app = {
  compute_platform : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codedeploy_app) -> ()

let yojson_of_aws_codedeploy_app =
  (function
   | {
       compute_platform = v_compute_platform;
       id = v_id;
       name = v_name;
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
         match v_compute_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_platform", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codedeploy_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codedeploy_app

[@@@deriving.end]

let aws_codedeploy_app ?compute_platform ?id ?tags ?tags_all ~name ()
    : aws_codedeploy_app =
  { compute_platform; id; name; tags; tags_all }

type t = {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  compute_platform : string prop;
  github_account_name : string prop;
  id : string prop;
  linked_to_github : bool prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?compute_platform ?id ?tags ?tags_all ~name __id =
  let __type = "aws_codedeploy_app" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       compute_platform =
         Prop.computed __type __id "compute_platform";
       github_account_name =
         Prop.computed __type __id "github_account_name";
       id = Prop.computed __type __id "id";
       linked_to_github =
         Prop.computed __type __id "linked_to_github";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codedeploy_app
        (aws_codedeploy_app ?compute_platform ?id ?tags ?tags_all
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_platform ?id ?tags ?tags_all ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?compute_platform ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
