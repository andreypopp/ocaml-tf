(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_main_route_table_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_main_route_table_association__timeouts *)

type aws_main_route_table_association = {
  route_table_id : string;  (** route_table_id *)
  vpc_id : string;  (** vpc_id *)
  timeouts : aws_main_route_table_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_main_route_table_association *)

let aws_main_route_table_association ?timeouts ~route_table_id
    ~vpc_id __resource_id =
  let __resource_type = "aws_main_route_table_association" in
  let __resource = { route_table_id; vpc_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_main_route_table_association __resource);
  ()
