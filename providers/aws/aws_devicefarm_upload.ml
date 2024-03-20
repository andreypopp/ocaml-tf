(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_devicefarm_upload = {
  content_type : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project_arn : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devicefarm_upload) -> ()

let yojson_of_aws_devicefarm_upload =
  (function
   | {
       content_type = v_content_type;
       id = v_id;
       name = v_name;
       project_arn = v_project_arn;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_arn in
         ("project_arn", arg) :: bnds
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
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_devicefarm_upload -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devicefarm_upload

[@@@deriving.end]

let aws_devicefarm_upload ?content_type ?id ~name ~project_arn ~type_
    () : aws_devicefarm_upload =
  { content_type; id; name; project_arn; type_ }

type t = {
  arn : string prop;
  category : string prop;
  content_type : string prop;
  id : string prop;
  metadata : string prop;
  name : string prop;
  project_arn : string prop;
  type_ : string prop;
  url : string prop;
}

let make ?content_type ?id ~name ~project_arn ~type_ __id =
  let __type = "aws_devicefarm_upload" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       category = Prop.computed __type __id "category";
       content_type = Prop.computed __type __id "content_type";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       project_arn = Prop.computed __type __id "project_arn";
       type_ = Prop.computed __type __id "type";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devicefarm_upload
        (aws_devicefarm_upload ?content_type ?id ~name ~project_arn
           ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?content_type ?id ~name ~project_arn ~type_
    __id =
  let (r : _ Tf_core.resource) =
    make ?content_type ?id ~name ~project_arn ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
