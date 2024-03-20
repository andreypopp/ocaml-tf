(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type appversion_lifecycle = {
  delete_source_from_s3 : bool prop option; [@option]
      (** delete_source_from_s3 *)
  max_age_in_days : float prop option; [@option]
      (** max_age_in_days *)
  max_count : float prop option; [@option]  (** max_count *)
  service_role : string prop;  (** service_role *)
}
[@@deriving yojson_of]
(** appversion_lifecycle *)

type aws_elastic_beanstalk_application = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  appversion_lifecycle : appversion_lifecycle list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_application *)

let appversion_lifecycle ?delete_source_from_s3 ?max_age_in_days
    ?max_count ~service_role () : appversion_lifecycle =
  { delete_source_from_s3; max_age_in_days; max_count; service_role }

let aws_elastic_beanstalk_application ?description ?id ?tags
    ?tags_all ~name ~appversion_lifecycle () :
    aws_elastic_beanstalk_application =
  { description; id; name; tags; tags_all; appversion_lifecycle }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~appversion_lifecycle
    __id =
  let __type = "aws_elastic_beanstalk_application" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_elastic_beanstalk_application
        (aws_elastic_beanstalk_application ?description ?id ?tags
           ?tags_all ~name ~appversion_lifecycle ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~appversion_lifecycle __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~appversion_lifecycle
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
