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

let aws_elastic_beanstalk_application_version ?description
    ?force_delete ?id ?tags ?tags_all ~application ~bucket ~key ~name
    __resource_id =
  let __resource_type =
    "aws_elastic_beanstalk_application_version"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_application_version __resource);
  ()
