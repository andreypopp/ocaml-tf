(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_reserved_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rds_reserved_instance__timeouts *)

type aws_rds_reserved_instance__recurring_charges = {
  recurring_charge_amount : float;  (** recurring_charge_amount *)
  recurring_charge_frequency : string;
      (** recurring_charge_frequency *)
}
[@@deriving yojson_of]

type aws_rds_reserved_instance = {
  instance_count : float option; [@option]  (** instance_count *)
  offering_id : string;  (** offering_id *)
  reservation_id : string option; [@option]  (** reservation_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_rds_reserved_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_reserved_instance *)

let aws_rds_reserved_instance ?instance_count ?reservation_id ?tags
    ?timeouts ~offering_id __resource_id =
  let __resource_type = "aws_rds_reserved_instance" in
  let __resource =
    { instance_count; offering_id; reservation_id; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_reserved_instance __resource);
  ()
