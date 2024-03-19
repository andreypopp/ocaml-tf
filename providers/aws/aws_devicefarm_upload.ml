(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?content_type ?id ~name ~project_arn ~type_
    __resource_id =
  let __resource_type = "aws_devicefarm_upload" in
  let __resource =
    aws_devicefarm_upload ?content_type ?id ~name ~project_arn ~type_
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_upload __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       category =
         Prop.computed __resource_type __resource_id "category";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       project_arn =
         Prop.computed __resource_type __resource_id "project_arn";
       type_ = Prop.computed __resource_type __resource_id "type";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
