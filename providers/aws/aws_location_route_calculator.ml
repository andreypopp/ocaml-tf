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

type aws_location_route_calculator = {
  calculator_name : string prop;  (** calculator_name *)
  data_source : string prop;  (** data_source *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_location_route_calculator *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_location_route_calculator ?description ?id ?tags ?tags_all
    ?timeouts ~calculator_name ~data_source () :
    aws_location_route_calculator =
  {
    calculator_name;
    data_source;
    description;
    id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  calculator_arn : string prop;
  calculator_name : string prop;
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~calculator_name ~data_source __resource_id =
  let __resource_type = "aws_location_route_calculator" in
  let __resource =
    aws_location_route_calculator ?description ?id ?tags ?tags_all
      ?timeouts ~calculator_name ~data_source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_route_calculator __resource);
  let __resource_attributes =
    ({
       calculator_arn =
         Prop.computed __resource_type __resource_id "calculator_arn";
       calculator_name =
         Prop.computed __resource_type __resource_id
           "calculator_name";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       data_source =
         Prop.computed __resource_type __resource_id "data_source";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
