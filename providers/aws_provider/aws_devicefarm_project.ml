(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_project = {
  default_job_timeout_minutes : float option; [@option]
      (** default_job_timeout_minutes *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_devicefarm_project *)

let aws_devicefarm_project ?default_job_timeout_minutes ?tags ~name
    __resource_id =
  let __resource_type = "aws_devicefarm_project" in
  let __resource = { default_job_timeout_minutes; name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_project __resource);
  ()
