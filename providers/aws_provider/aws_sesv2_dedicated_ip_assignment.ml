(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sesv2_dedicated_ip_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_assignment__timeouts *)

type aws_sesv2_dedicated_ip_assignment = {
  destination_pool_name : string;  (** destination_pool_name *)
  ip : string;  (** ip *)
  timeouts : aws_sesv2_dedicated_ip_assignment__timeouts option;
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_assignment *)

let aws_sesv2_dedicated_ip_assignment ?timeouts
    ~destination_pool_name ~ip __resource_id =
  let __resource_type = "aws_sesv2_dedicated_ip_assignment" in
  let __resource = { destination_pool_name; ip; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_dedicated_ip_assignment __resource);
  ()
