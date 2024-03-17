(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53_key_signing_key = {
  hosted_zone_id : string;  (** hosted_zone_id *)
  key_management_service_arn : string;
      (** key_management_service_arn *)
  name : string;  (** name *)
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_route53_key_signing_key *)

let aws_route53_key_signing_key ?status ~hosted_zone_id
    ~key_management_service_arn ~name __resource_id =
  let __resource_type = "aws_route53_key_signing_key" in
  let __resource =
    { hosted_zone_id; key_management_service_arn; name; status }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_key_signing_key __resource);
  ()
