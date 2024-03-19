(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_acm_certificate_validation = {
  certificate_arn : string prop;  (** certificate_arn *)
  id : string prop option; [@option]  (** id *)
  validation_record_fqdns : string prop list option; [@option]
      (** validation_record_fqdns *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_acm_certificate_validation *)

let timeouts ?create () : timeouts = { create }

let aws_acm_certificate_validation ?id ?validation_record_fqdns
    ?timeouts ~certificate_arn () : aws_acm_certificate_validation =
  { certificate_arn; id; validation_record_fqdns; timeouts }

type t = {
  certificate_arn : string prop;
  id : string prop;
  validation_record_fqdns : string list prop;
}

let register ?tf_module ?id ?validation_record_fqdns ?timeouts
    ~certificate_arn __resource_id =
  let __resource_type = "aws_acm_certificate_validation" in
  let __resource =
    aws_acm_certificate_validation ?id ?validation_record_fqdns
      ?timeouts ~certificate_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acm_certificate_validation __resource);
  let __resource_attributes =
    ({
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       id = Prop.computed __resource_type __resource_id "id";
       validation_record_fqdns =
         Prop.computed __resource_type __resource_id
           "validation_record_fqdns";
     }
      : t)
  in
  __resource_attributes
