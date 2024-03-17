(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_project = {
  default_job_timeout_minutes : float prop option; [@option]
      (** default_job_timeout_minutes *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_devicefarm_project *)

type t = {
  arn : string prop;
  default_job_timeout_minutes : float prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_devicefarm_project ?default_job_timeout_minutes ?id ?tags
    ?tags_all ~name __resource_id =
  let __resource_type = "aws_devicefarm_project" in
  let __resource =
    ({ default_job_timeout_minutes; id; name; tags; tags_all }
      : aws_devicefarm_project)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_project __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_job_timeout_minutes =
         Prop.computed __resource_type __resource_id
           "default_job_timeout_minutes";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
