(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_image = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  image_name : string prop;  (** image_name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_sagemaker_image *)

let aws_sagemaker_image ?description ?display_name ?id ?tags
    ?tags_all ~image_name ~role_arn () : aws_sagemaker_image =
  {
    description;
    display_name;
    id;
    image_name;
    role_arn;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  image_name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?display_name ?id ?tags ?tags_all ~image_name
    ~role_arn __id =
  let __type = "aws_sagemaker_image" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       image_name = Prop.computed __type __id "image_name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_image
        (aws_sagemaker_image ?description ?display_name ?id ?tags
           ?tags_all ~image_name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?tags
    ?tags_all ~image_name ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?tags ?tags_all ~image_name
      ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
