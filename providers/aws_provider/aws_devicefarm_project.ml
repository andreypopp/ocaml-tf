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

let aws_devicefarm_project ?default_job_timeout_minutes ?id ?tags
    ?tags_all ~name __resource_id =
  let __resource_type = "aws_devicefarm_project" in
  let __resource =
    { default_job_timeout_minutes; id; name; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_project __resource);
  ()
