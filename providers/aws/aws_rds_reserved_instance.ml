(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type recurring_charges = {
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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_reserved_instance *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_rds_reserved_instance ?id ?instance_count ?reservation_id
    ?tags ?tags_all ?timeouts ~offering_id () :
    aws_rds_reserved_instance =
  {
    id;
    instance_count;
    offering_id;
    reservation_id;
    tags;
    tags_all;
    timeouts;
  }

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
  recurring_charges : recurring_charges list prop;
  reservation_id : string prop;
  start_time : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  usage_price : float prop;
}

let make ?id ?instance_count ?reservation_id ?tags ?tags_all
    ?timeouts ~offering_id __id =
  let __type = "aws_rds_reserved_instance" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       currency_code = Prop.computed __type __id "currency_code";
       db_instance_class =
         Prop.computed __type __id "db_instance_class";
       duration = Prop.computed __type __id "duration";
       fixed_price = Prop.computed __type __id "fixed_price";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       lease_id = Prop.computed __type __id "lease_id";
       multi_az = Prop.computed __type __id "multi_az";
       offering_id = Prop.computed __type __id "offering_id";
       offering_type = Prop.computed __type __id "offering_type";
       product_description =
         Prop.computed __type __id "product_description";
       recurring_charges =
         Prop.computed __type __id "recurring_charges";
       reservation_id = Prop.computed __type __id "reservation_id";
       start_time = Prop.computed __type __id "start_time";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       usage_price = Prop.computed __type __id "usage_price";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_reserved_instance
        (aws_rds_reserved_instance ?id ?instance_count
           ?reservation_id ?tags ?tags_all ?timeouts ~offering_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?instance_count ?reservation_id ?tags
    ?tags_all ?timeouts ~offering_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?instance_count ?reservation_id ?tags ?tags_all
      ?timeouts ~offering_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
