(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elastic_beanstalk_application__appversion_lifecycle = {
  delete_source_from_s3 : bool prop option; [@option]
      (** delete_source_from_s3 *)
  max_age_in_days : float prop option; [@option]
      (** max_age_in_days *)
  max_count : float prop option; [@option]  (** max_count *)
  service_role : string prop;  (** service_role *)
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_application__appversion_lifecycle *)

type aws_elastic_beanstalk_application = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  appversion_lifecycle :
    aws_elastic_beanstalk_application__appversion_lifecycle list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_application *)

let aws_elastic_beanstalk_application ?description ?id ?tags
    ?tags_all ~name ~appversion_lifecycle __resource_id =
  let __resource_type = "aws_elastic_beanstalk_application" in
  let __resource =
    { description; id; name; tags; tags_all; appversion_lifecycle }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_application __resource);
  ()
