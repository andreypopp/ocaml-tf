(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_resource_policy = {
  content : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_resource_policy) -> ()

let yojson_of_aws_organizations_resource_policy =
  (function
   | {
       content = v_content;
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : aws_organizations_resource_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_resource_policy

[@@@deriving.end]

let aws_organizations_resource_policy ?id ?tags ?tags_all ~content ()
    : aws_organizations_resource_policy =
  { content; id; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  content : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~content __id =
  let __type = "aws_organizations_resource_policy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_resource_policy
        (aws_organizations_resource_policy ?id ?tags ?tags_all
           ~content ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~content __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~content __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
