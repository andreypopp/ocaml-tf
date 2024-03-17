(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_gateway__timeouts *)

type aws_dx_gateway = {
  amazon_side_asn : string prop;  (** amazon_side_asn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : aws_dx_gateway__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_gateway *)

type t = {
  amazon_side_asn : string prop;
  id : string prop;
  name : string prop;
  owner_account_id : string prop;
}

let aws_dx_gateway ?id ?timeouts ~amazon_side_asn ~name __resource_id
    =
  let __resource_type = "aws_dx_gateway" in
  let __resource =
    ({ amazon_side_asn; id; name; timeouts } : aws_dx_gateway)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_gateway __resource);
  let __resource_attributes =
    ({
       amazon_side_asn =
         Prop.computed __resource_type __resource_id
           "amazon_side_asn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
     }
      : t)
  in
  __resource_attributes
