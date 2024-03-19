(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type delivery_address = {
  simple_address : string prop;  (** simple_address *)
}
[@@deriving yojson_of]
(** delivery_address *)

type aws_ssmcontacts_contact_channel = {
  contact_id : string prop;  (** contact_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  delivery_address : delivery_address list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_contact_channel *)

let delivery_address ~simple_address () : delivery_address =
  { simple_address }

let aws_ssmcontacts_contact_channel ?id ~contact_id ~name ~type_
    ~delivery_address () : aws_ssmcontacts_contact_channel =
  { contact_id; id; name; type_; delivery_address }

type t = {
  activation_status : string prop;
  arn : string prop;
  contact_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let register ?tf_module ?id ~contact_id ~name ~type_
    ~delivery_address __resource_id =
  let __resource_type = "aws_ssmcontacts_contact_channel" in
  let __resource =
    aws_ssmcontacts_contact_channel ?id ~contact_id ~name ~type_
      ~delivery_address ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmcontacts_contact_channel __resource);
  let __resource_attributes =
    ({
       activation_status =
         Prop.computed __resource_type __resource_id
           "activation_status";
       arn = Prop.computed __resource_type __resource_id "arn";
       contact_id =
         Prop.computed __resource_type __resource_id "contact_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
