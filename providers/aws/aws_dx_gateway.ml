(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dx_gateway = {
  amazon_side_asn : string prop;  (** amazon_side_asn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_gateway *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dx_gateway ?id ?timeouts ~amazon_side_asn ~name () :
    aws_dx_gateway =
  { amazon_side_asn; id; name; timeouts }

type t = {
  amazon_side_asn : string prop;
  id : string prop;
  name : string prop;
  owner_account_id : string prop;
}

let register ?tf_module ?id ?timeouts ~amazon_side_asn ~name
    __resource_id =
  let __resource_type = "aws_dx_gateway" in
  let __resource =
    aws_dx_gateway ?id ?timeouts ~amazon_side_asn ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
