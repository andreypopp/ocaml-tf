(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_main_route_table_association = {
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_main_route_table_association *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_main_route_table_association ?id ?timeouts ~route_table_id
    ~vpc_id () : aws_main_route_table_association =
  { id; route_table_id; vpc_id; timeouts }

type t = {
  id : string prop;
  original_route_table_id : string prop;
  route_table_id : string prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?timeouts ~route_table_id ~vpc_id
    __resource_id =
  let __resource_type = "aws_main_route_table_association" in
  let __resource =
    aws_main_route_table_association ?id ?timeouts ~route_table_id
      ~vpc_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_main_route_table_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       original_route_table_id =
         Prop.computed __resource_type __resource_id
           "original_route_table_id";
       route_table_id =
         Prop.computed __resource_type __resource_id "route_table_id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
