(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_maintenance_window_target__targets = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_target__targets *)

type aws_ssm_maintenance_window_target = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  owner_information : string option; [@option]
      (** owner_information *)
  resource_type : string;  (** resource_type *)
  window_id : string;  (** window_id *)
  targets : aws_ssm_maintenance_window_target__targets list;
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_target *)

let aws_ssm_maintenance_window_target ?description ?id ?name
    ?owner_information ~resource_type ~window_id ~targets
    __resource_id =
  let __resource_type = "aws_ssm_maintenance_window_target" in
  let __resource =
    {
      description;
      id;
      name;
      owner_information;
      resource_type;
      window_id;
      targets;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_maintenance_window_target __resource);
  ()
