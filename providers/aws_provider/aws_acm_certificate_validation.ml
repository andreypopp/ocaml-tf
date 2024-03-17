(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acm_certificate_validation__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_acm_certificate_validation__timeouts *)

type aws_acm_certificate_validation = {
  certificate_arn : string;  (** certificate_arn *)
  id : string option; [@option]  (** id *)
  validation_record_fqdns : string list option; [@option]
      (** validation_record_fqdns *)
  timeouts : aws_acm_certificate_validation__timeouts option;
}
[@@deriving yojson_of]
(** aws_acm_certificate_validation *)

let aws_acm_certificate_validation ?id ?validation_record_fqdns
    ?timeouts ~certificate_arn __resource_id =
  let __resource_type = "aws_acm_certificate_validation" in
  let __resource =
    { certificate_arn; id; validation_record_fqdns; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acm_certificate_validation __resource);
  ()
