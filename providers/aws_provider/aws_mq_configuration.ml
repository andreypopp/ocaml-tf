(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mq_configuration = {
  authentication_strategy : string prop option; [@option]
      (** authentication_strategy *)
  data : string prop;  (** data *)
  description : string prop option; [@option]  (** description *)
  engine_type : string prop;  (** engine_type *)
  engine_version : string prop;  (** engine_version *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_mq_configuration *)

type t = {
  arn : string prop;
  authentication_strategy : string prop;
  data : string prop;
  description : string prop;
  engine_type : string prop;
  engine_version : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_mq_configuration ?authentication_strategy ?description ?id
    ?tags ?tags_all ~data ~engine_type ~engine_version ~name
    __resource_id =
  let __resource_type = "aws_mq_configuration" in
  let __resource =
    ({
       authentication_strategy;
       data;
       description;
       engine_type;
       engine_version;
       id;
       name;
       tags;
       tags_all;
     }
      : aws_mq_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mq_configuration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       authentication_strategy =
         Prop.computed __resource_type __resource_id
           "authentication_strategy";
       data = Prop.computed __resource_type __resource_id "data";
       description =
         Prop.computed __resource_type __resource_id "description";
       engine_type =
         Prop.computed __resource_type __resource_id "engine_type";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       id = Prop.computed __resource_type __resource_id "id";
       latest_revision =
         Prop.computed __resource_type __resource_id
           "latest_revision";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
