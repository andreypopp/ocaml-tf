(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_test_grid_project__vpc_config = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_devicefarm_test_grid_project__vpc_config *)

type aws_devicefarm_test_grid_project = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_config : aws_devicefarm_test_grid_project__vpc_config list;
}
[@@deriving yojson_of]
(** aws_devicefarm_test_grid_project *)

let aws_devicefarm_test_grid_project ?description ?id ?tags ?tags_all
    ~name ~vpc_config __resource_id =
  let __resource_type = "aws_devicefarm_test_grid_project" in
  let __resource =
    { description; id; name; tags; tags_all; vpc_config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_test_grid_project __resource);
  ()
