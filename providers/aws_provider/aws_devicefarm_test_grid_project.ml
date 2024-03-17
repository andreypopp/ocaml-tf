(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_test_grid_project__vpc_config = {
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_devicefarm_test_grid_project__vpc_config *)

type aws_devicefarm_test_grid_project = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_config : aws_devicefarm_test_grid_project__vpc_config list;
}
[@@deriving yojson_of]
(** aws_devicefarm_test_grid_project *)

let aws_devicefarm_test_grid_project ?description ?tags ~name
    ~vpc_config __resource_id =
  let __resource_type = "aws_devicefarm_test_grid_project" in
  let __resource = { description; name; tags; vpc_config } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_test_grid_project __resource);
  ()
