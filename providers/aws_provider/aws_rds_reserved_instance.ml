(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_reserved_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rds_reserved_instance__timeouts *)

type aws_rds_reserved_instance__recurring_charges = {
  recurring_charge_amount : float prop;
      (** recurring_charge_amount *)
  recurring_charge_frequency : string prop;
      (** recurring_charge_frequency *)
}
[@@deriving yojson_of]

type aws_rds_reserved_instance = {
  id : string prop option; [@option]  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  offering_id : string prop;  (** offering_id *)
  reservation_id : string prop option; [@option]
      (** reservation_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_rds_reserved_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_reserved_instance *)

type t = {
  arn : string prop;
  currency_code : string prop;
  db_instance_class : string prop;
  duration : float prop;
  fixed_price : float prop;
  id : string prop;
  instance_count : float prop;
  lease_id : string prop;
  multi_az : bool prop;
  offering_id : string prop;
  offering_type : string prop;
  product_description : string prop;
  recurring_charges :
    aws_rds_reserved_instance__recurring_charges list prop;
  reservation_id : string prop;
  start_time : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  usage_price : float prop;
}

let aws_rds_reserved_instance ?id ?instance_count ?reservation_id
    ?tags ?tags_all ?timeouts ~offering_id __resource_id =
  let __resource_type = "aws_rds_reserved_instance" in
  let __resource =
    ({
       id;
       instance_count;
       offering_id;
       reservation_id;
       tags;
       tags_all;
       timeouts;
     }
      : aws_rds_reserved_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_reserved_instance __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       currency_code =
         Prop.computed __resource_type __resource_id "currency_code";
       db_instance_class =
         Prop.computed __resource_type __resource_id
           "db_instance_class";
       duration =
         Prop.computed __resource_type __resource_id "duration";
       fixed_price =
         Prop.computed __resource_type __resource_id "fixed_price";
       id = Prop.computed __resource_type __resource_id "id";
       instance_count =
         Prop.computed __resource_type __resource_id "instance_count";
       lease_id =
         Prop.computed __resource_type __resource_id "lease_id";
       multi_az =
         Prop.computed __resource_type __resource_id "multi_az";
       offering_id =
         Prop.computed __resource_type __resource_id "offering_id";
       offering_type =
         Prop.computed __resource_type __resource_id "offering_type";
       product_description =
         Prop.computed __resource_type __resource_id
           "product_description";
       recurring_charges =
         Prop.computed __resource_type __resource_id
           "recurring_charges";
       reservation_id =
         Prop.computed __resource_type __resource_id "reservation_id";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       usage_price =
         Prop.computed __resource_type __resource_id "usage_price";
     }
      : t)
  in
  __resource_attributes
