(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_receipt_filter = {
  cidr : string prop;  (** cidr *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_filter *)

type t = {
  arn : string prop;
  cidr : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

let aws_ses_receipt_filter ?id ~cidr ~name ~policy __resource_id =
  let __resource_type = "aws_ses_receipt_filter" in
  let __resource =
    ({ cidr; id; name; policy } : aws_ses_receipt_filter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_receipt_filter __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cidr = Prop.computed __resource_type __resource_id "cidr";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
