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
  id : string option; [@option]  (** id *)
  pool_name : string;  (** pool_name *)
  scaling_mode : string option; [@option]  (** scaling_mode *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_sesv2_dedicated_ip_pool__timeouts option;
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_pool *)

let aws_sesv2_dedicated_ip_pool ?id ?scaling_mode ?tags ?tags_all
    ?timeouts ~pool_name __resource_id =
  let __resource_type = "aws_sesv2_dedicated_ip_pool" in
  let __resource =
    { id; pool_name; scaling_mode; tags; tags_all; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_dedicated_ip_pool __resource);
  ()
