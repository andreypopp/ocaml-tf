(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elastic_beanstalk_application_version = {
  application : string prop;  (** application *)
  bucket : string prop;  (** bucket *)
  description : string prop option; [@option]  (** description *)
  force_delete : bool prop option; [@option]  (** force_delete *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_application_version *)

let aws_elastic_beanstalk_application_version ?description
    ?force_delete ?id ?tags ?tags_all ~application ~bucket ~key ~name
    () : aws_elastic_beanstalk_application_version =
  {
    application;
    bucket;
    description;
    force_delete;
    id;
    key;
    name;
    tags;
    tags_all;
  }

type t = {
  application : string prop;
  arn : string prop;
  bucket : string prop;
  description : string prop;
  force_delete : bool prop;
  id : string prop;
  key : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?force_delete ?id ?tags ?tags_all ~application
    ~bucket ~key ~name __id =
  let __type = "aws_elastic_beanstalk_application_version" in
  let __attrs =
    ({
       application = Prop.computed __type __id "application";
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       description = Prop.computed __type __id "description";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
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
      yojson_of_aws_elastic_beanstalk_application_version
        (aws_elastic_beanstalk_application_version ?description
           ?force_delete ?id ?tags ?tags_all ~application ~bucket
           ~key ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_delete ?id ?tags
    ?tags_all ~application ~bucket ~key ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_delete ?id ?tags ?tags_all ~application
      ~bucket ~key ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
