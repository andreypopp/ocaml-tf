(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_bucket = {
  bundle_id : string prop;
  force_delete : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_bucket) -> ()

let yojson_of_aws_lightsail_bucket =
  (function
   | {
       bundle_id = v_bundle_id;
       force_delete = v_force_delete;
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
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bundle_id in
         ("bundle_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_bucket

[@@@deriving.end]

let aws_lightsail_bucket ?force_delete ?id ?tags ?tags_all ~bundle_id
    ~name () : aws_lightsail_bucket =
  { bundle_id; force_delete; id; name; tags; tags_all }

type t = {
  arn : string prop;
  availability_zone : string prop;
  bundle_id : string prop;
  created_at : string prop;
  force_delete : bool prop;
  id : string prop;
  name : string prop;
  region : string prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

let make ?force_delete ?id ?tags ?tags_all ~bundle_id ~name __id =
  let __type = "aws_lightsail_bucket" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       bundle_id = Prop.computed __type __id "bundle_id";
       created_at = Prop.computed __type __id "created_at";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       support_code = Prop.computed __type __id "support_code";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_bucket
        (aws_lightsail_bucket ?force_delete ?id ?tags ?tags_all
           ~bundle_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?force_delete ?id ?tags ?tags_all ~bundle_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?force_delete ?id ?tags ?tags_all ~bundle_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
