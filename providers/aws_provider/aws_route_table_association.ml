(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route_table_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route_table_association__timeouts *)

type aws_route_table_association = {
  gateway_id : string prop option; [@option]  (** gateway_id *)
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  timeouts : aws_route_table_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_route_table_association *)

let aws_route_table_association ?gateway_id ?id ?subnet_id ?timeouts
    ~route_table_id __resource_id =
  let __resource_type = "aws_route_table_association" in
  let __resource =
    { gateway_id; id; route_table_id; subnet_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route_table_association __resource);
  ()
