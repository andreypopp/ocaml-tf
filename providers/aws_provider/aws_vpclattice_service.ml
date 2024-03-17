(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service__timeouts *)

type aws_vpclattice_service__dns_entry = {
  domain_name : string;  (** domain_name *)
  hosted_zone_id : string;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpclattice_service = {
  certificate_arn : string option; [@option]  (** certificate_arn *)
  custom_domain_name : string option; [@option]
      (** custom_domain_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_vpclattice_service__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service *)

let aws_vpclattice_service ?certificate_arn ?custom_domain_name ?tags
    ?timeouts ~name __resource_id =
  let __resource_type = "aws_vpclattice_service" in
  let __resource =
    { certificate_arn; custom_domain_name; name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service __resource);
  ()
