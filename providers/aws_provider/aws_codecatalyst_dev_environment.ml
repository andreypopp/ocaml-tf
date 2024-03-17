(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecatalyst_dev_environment__ides = {
  name : string option; [@option]  (** name *)
  runtime : string option; [@option]  (** runtime *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment__ides *)

type aws_codecatalyst_dev_environment__persistent_storage = {
  size : float;  (** size *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment__persistent_storage *)

type aws_codecatalyst_dev_environment__repositories = {
  branch_name : string option; [@option]  (** branch_name *)
  repository_name : string;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment__repositories *)

type aws_codecatalyst_dev_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment__timeouts *)

type aws_codecatalyst_dev_environment = {
  alias : string option; [@option]  (** alias *)
  id : string option; [@option]  (** id *)
  inactivity_timeout_minutes : float option; [@option]
      (** inactivity_timeout_minutes *)
  instance_type : string;  (** instance_type *)
  project_name : string;  (** project_name *)
  space_name : string;  (** space_name *)
  ides : aws_codecatalyst_dev_environment__ides list;
  persistent_storage :
    aws_codecatalyst_dev_environment__persistent_storage list;
  repositories : aws_codecatalyst_dev_environment__repositories list;
  timeouts : aws_codecatalyst_dev_environment__timeouts option;
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment *)

let aws_codecatalyst_dev_environment ?alias ?id
    ?inactivity_timeout_minutes ?timeouts ~instance_type
    ~project_name ~space_name ~ides ~persistent_storage ~repositories
    __resource_id =
  let __resource_type = "aws_codecatalyst_dev_environment" in
  let __resource =
    {
      alias;
      id;
      inactivity_timeout_minutes;
      instance_type;
      project_name;
      space_name;
      ides;
      persistent_storage;
      repositories;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecatalyst_dev_environment __resource);
  ()
