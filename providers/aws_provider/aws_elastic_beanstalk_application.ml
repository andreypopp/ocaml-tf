(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_elastic_beanstalk_application__appversion_lifecycle = {
  delete_source_from_s3 : bool option; [@option]
      (** delete_source_from_s3 *)
  max_age_in_days : float option; [@option]  (** max_age_in_days *)
  max_count : float option; [@option]  (** max_count *)
  service_role : string;  (** service_role *)
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_application__appversion_lifecycle *)

type aws_elastic_beanstalk_application = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  appversion_lifecycle :
    aws_elastic_beanstalk_application__appversion_lifecycle list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_application *)

let aws_elastic_beanstalk_application ?description ?tags ~name
    ~appversion_lifecycle __resource_id =
  let __resource_type = "aws_elastic_beanstalk_application" in
  let __resource =
    { description; name; tags; appversion_lifecycle }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_application __resource);
  ()
