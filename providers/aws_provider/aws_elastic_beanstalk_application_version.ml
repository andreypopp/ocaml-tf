(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_elastic_beanstalk_application_version ?description
    ?force_delete ?id ?tags ?tags_all ~application ~bucket ~key ~name
    __resource_id =
  let __resource_type =
    "aws_elastic_beanstalk_application_version"
  in
  let __resource =
    ({
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
      : aws_elastic_beanstalk_application_version)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_application_version __resource);
  let __resource_attributes =
    ({
       application =
         Prop.computed __resource_type __resource_id "application";
       arn = Prop.computed __resource_type __resource_id "arn";
       bucket = Prop.computed __resource_type __resource_id "bucket";
       description =
         Prop.computed __resource_type __resource_id "description";
       force_delete =
         Prop.computed __resource_type __resource_id "force_delete";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
