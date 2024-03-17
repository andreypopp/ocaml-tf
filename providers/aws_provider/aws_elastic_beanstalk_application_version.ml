(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_elastic_beanstalk_application_version = {
  application : string;  (** application *)
  bucket : string;  (** bucket *)
  description : string option; [@option]  (** description *)
  force_delete : bool option; [@option]  (** force_delete *)
  key : string;  (** key *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_application_version *)

let aws_elastic_beanstalk_application_version ?description
    ?force_delete ?tags ~application ~bucket ~key ~name __resource_id
    =
  let __resource_type =
    "aws_elastic_beanstalk_application_version"
  in
  let __resource =
    {
      application;
      bucket;
      description;
      force_delete;
      key;
      name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_application_version __resource);
  ()
