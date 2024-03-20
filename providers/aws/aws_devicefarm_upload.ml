(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_devicefarm_upload = {
  content_type : string prop option; [@option]  (** content_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project_arn : string prop;  (** project_arn *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_devicefarm_upload *)

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
