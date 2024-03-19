(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~appversion_lifecycle __resource_id =
  let __resource_type = "aws_elastic_beanstalk_application" in
  let __resource =
    aws_elastic_beanstalk_application ?description ?id ?tags
      ?tags_all ~name ~appversion_lifecycle ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_application __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
