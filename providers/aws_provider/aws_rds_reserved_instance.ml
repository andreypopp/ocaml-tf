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

let aws_rds_reserved_instance ?id ?instance_count ?reservation_id
    ?tags ?tags_all ?timeouts ~offering_id __resource_id =
  let __resource_type = "aws_rds_reserved_instance" in
  let __resource =
    {
      id;
      instance_count;
      offering_id;
      reservation_id;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_reserved_instance __resource);
  ()
