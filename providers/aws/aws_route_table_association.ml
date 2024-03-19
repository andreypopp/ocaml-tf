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

type aws_route_table_association = {
  gateway_id : string prop option; [@option]  (** gateway_id *)
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route_table_association *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route_table_association ?gateway_id ?id ?subnet_id ?timeouts
    ~route_table_id () : aws_route_table_association =
  { gateway_id; id; route_table_id; subnet_id; timeouts }

type t = {
  gateway_id : string prop;
  id : string prop;
  route_table_id : string prop;
  subnet_id : string prop;
}

let register ?tf_module ?gateway_id ?id ?subnet_id ?timeouts
    ~route_table_id __resource_id =
  let __resource_type = "aws_route_table_association" in
  let __resource =
    aws_route_table_association ?gateway_id ?id ?subnet_id ?timeouts
      ~route_table_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route_table_association __resource);
  let __resource_attributes =
    ({
       gateway_id =
         Prop.computed __resource_type __resource_id "gateway_id";
       id = Prop.computed __resource_type __resource_id "id";
       route_table_id =
         Prop.computed __resource_type __resource_id "route_table_id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
