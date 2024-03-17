(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_dedicated_ip_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_pool__timeouts *)

type aws_sesv2_dedicated_ip_pool = {
  pool_name : string;  (** pool_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_sesv2_dedicated_ip_pool__timeouts option;
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_pool *)

let aws_sesv2_dedicated_ip_pool ?tags ?timeouts ~pool_name
    __resource_id =
  let __resource_type = "aws_sesv2_dedicated_ip_pool" in
  let __resource = { pool_name; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_dedicated_ip_pool __resource);
  ()
